=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://github.com/DataDog/datadog-api-client-ruby/tree/master/.generator

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'date'
require 'time'

module DatadogAPIClient::V1
  # An Object of metric units.
  class SLOHistoryMetricsSeriesMetadataUnit
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # The family of metric unit, for example `bytes` is the family for `kibibyte`, `byte`, and `bit` units.
    attr_accessor :family

    # The ID of the metric unit.
    attr_accessor :id

    # The unit of the metric, for instance `byte`.
    attr_accessor :name

    # The plural Unit of metric, for instance `bytes`.
    attr_accessor :plural

    # The scale factor of metric unit, for instance `1.0`.
    attr_accessor :scale_factor

    # A shorter and abbreviated version of the metric unit, for instance `B`.
    attr_accessor :short_name

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'family' => :'family',
        :'id' => :'id',
        :'name' => :'name',
        :'plural' => :'plural',
        :'scale_factor' => :'scale_factor',
        :'short_name' => :'short_name'
      }
    end

    # Returns all the JSON keys this model knows about
    # @!visibility private
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'family' => :'String',
        :'id' => :'Integer',
        :'name' => :'String',
        :'plural' => :'String',
        :'scale_factor' => :'Float',
        :'short_name' => :'String'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'plural',
        :'short_name',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SLOHistoryMetricsSeriesMetadataUnit` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::SLOHistoryMetricsSeriesMetadataUnit`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'family')
        self.family = attributes[:'family']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'plural')
        self.plural = attributes[:'plural']
      end

      if attributes.key?(:'scale_factor')
        self.scale_factor = attributes[:'scale_factor']
      end

      if attributes.key?(:'short_name')
        self.short_name = attributes[:'short_name']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          family == o.family &&
          id == o.id &&
          name == o.name &&
          plural == o.plural &&
          scale_factor == o.scale_factor &&
          short_name == o.short_name
    end

    # @see the `==` method
    # @param o [Object] Object to be compared
    # @!visibility private
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [family, id, name, plural, scale_factor, short_name].hash
    end
  end
end
