=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'spec_helper'
require 'json'

# Unit tests for DatadogAPIClient::V1::TagsAPI
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TagsAPI' do
  before do
    # run before each test
    @api_instance = DatadogAPIClient::V1::TagsAPI.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TagsAPI' do
    it 'should create an instance of TagsAPI' do
      expect(@api_instance).to be_instance_of(DatadogAPIClient::V1::TagsAPI)
    end
  end

  # unit tests for create_host_tags
  # Add tags to a host
  # This endpoint allows you to add new tags to a host, optionally specifying where these tags come from.
  # @param host_name This endpoint allows you to add new tags to a host, optionally specifying where the tags came from.
  # @param body Update host tags request body.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :source The source of the tags. [Complete list of source attribute values](https://docs.datadoghq.com/integrations/faq/list-of-api-source-attribute-value).
  # @return [HostTags]
  describe 'create_host_tags test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_host_tags
  # Remove host tags
  # This endpoint allows you to remove all user-assigned tags for a single host.
  # @param host_name This endpoint allows you to remove all user-assigned tags for a single host.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :source The source of the tags (for example chef, puppet). [Complete list of source attribute values](https://docs.datadoghq.com/integrations/faq/list-of-api-source-attribute-value).
  # @return [nil]
  describe 'delete_host_tags test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_host_tags
  # Get host tags
  # Return the list of tags that apply to a given host.
  # @param host_name When specified, filters list of tags to those tags with the specified source.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :source Source to filter.
  # @return [HostTags]
  describe 'get_host_tags test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_host_tags
  # Get Tags
  # Return a mapping of tags to hosts for your whole infrastructure.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :source When specified, filters host list to those tags with the specified source.
  # @return [TagToHosts]
  describe 'list_host_tags test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_host_tags
  # Update host tags
  # This endpoint allows you to update/replace all tags in an integration source with those supplied in the request.
  # @param host_name This endpoint allows you to update/replace all in an integration source with those supplied in the request.
  # @param body Add tags to host
  # @param [Hash] opts the optional parameters
  # @option opts [String] :source The source of the tags (for example chef, puppet). [Complete list of source attribute values](https://docs.datadoghq.com/integrations/faq/list-of-api-source-attribute-value)
  # @return [HostTags]
  describe 'update_host_tags test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
