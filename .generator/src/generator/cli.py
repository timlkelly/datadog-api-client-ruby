import json
import pathlib

import click
from jinja2 import Environment, FileSystemLoader, Template

from . import openapi
from . import formatter


@click.command()
@click.option(
    "-i",
    "--input",
    type=click.Path(
        exists=True, file_okay=True, dir_okay=False, path_type=pathlib.Path
    ),
)
@click.option(
    "-o",
    "--output",
    type=click.Path(path_type=pathlib.Path),
)
def cli(input, output):
    """
    Generate a Ruby code snippet from OpenAPI specification.
    """
    spec = openapi.load(input)

    version = input.parent.name
    with (input.parent.parent.parent / "config" / f"{version}.json").open() as fp:
        config = json.load(fp)

    env = Environment(
        loader=FileSystemLoader(str(pathlib.Path(__file__).parent / "templates"))
    )

    env.filters["accept_headers"] = openapi.accept_headers
    env.filters["attribute_name"] = formatter.attribute_name
    env.filters["block_comment"] = formatter.block_comment
    env.filters["camel_case"] = formatter.camel_case
    env.filters["collection_format"] = openapi.collection_format
    env.filters["format_server"] = openapi.format_server
    env.filters["format_value"] = formatter.format_value
    env.filters["parameter_schema"] = openapi.parameter_schema
    env.filters["parameters"] = openapi.parameters
    env.filters["return_type"] = openapi.return_type
    env.filters["snake_case"] = formatter.snake_case

    env.globals["config"] = config
    env.globals["enumerate"] = enumerate
    env.globals["version"] = version
    env.globals["openapi"] = spec
    env.globals["get_name"] = openapi.get_name
    env.globals["get_type_for_attribute"] = openapi.get_type_for_attribute
    env.globals["get_type_for_parameter"] = openapi.get_type_for_parameter

    api_j2 = env.get_template("api.j2")
    model_j2 = env.get_template("model.j2")
    package_j2 = env.get_template("package.j2")

    extra_files = {
        "api_client.rb": env.get_template("api_client.j2"),
        "api_error.rb": env.get_template("api_error.j2"),
        "configuration.rb": env.get_template("configuration.j2"),
        "model_base.rb": env.get_template("model_base.j2"),
    }

    apis = openapi.apis(spec)
    models = openapi.models(spec)

    package = output / config["gemNameInExamples"] / f"{version}.rb"
    package.parent.mkdir(parents=True, exist_ok=True)
    with package.open("w") as fp:
        fp.write(package_j2.render(apis=apis, models=models))

    gem_path = output / config["gemName"]
    gem_path.mkdir(parents=True, exist_ok=True)

    for name, template in extra_files.items():
        filename = gem_path / name
        with filename.open("w") as fp:
            fp.write(template.render(apis=apis, models=models))

    for name, model in models.items():
        filename = formatter.snake_case(name) + ".rb"
        model_path = gem_path / "models" / filename
        model_path.parent.mkdir(parents=True, exist_ok=True)
        with model_path.open("w") as fp:
            fp.write(model_j2.render(name=name, model=model))

    for name, operations in apis.items():
        filename = formatter.snake_case(name) + "_api.rb"
        api_path = gem_path / "api" / filename
        api_path.parent.mkdir(parents=True, exist_ok=True)
        with api_path.open("w") as fp:
            fp.write(api_j2.render(name=name, operations=operations))
