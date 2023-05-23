=begin
#Datadog API V2 Collection

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

module DatadogAPIClient::V2
  # Object for a single security filter.
  class SecurityFilterCreateData
    include BaseGenericModel

    # Object containing the attributes of the security filter to be created.
    attr_reader :attributes

    # The type of the resource. The value should always be `security_filters`.
    attr_reader :type

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'attributes' => :'attributes',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'attributes' => :'SecurityFilterCreateAttributes',
        :'type' => :'SecurityFilterType'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::SecurityFilterCreateData` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::SecurityFilterCreateData`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'attributes')
        self.attributes = attributes[:'attributes']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @attributes.nil?
      return false if @type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param attributes [Object] Object to be assigned
    # @!visibility private
    def attributes=(attributes)
      if attributes.nil?
        fail ArgumentError, 'invalid value for "attributes", attributes cannot be nil.'
      end
      @attributes = attributes
    end

    # Custom attribute writer method with validation
    # @param type [Object] Object to be assigned
    # @!visibility private
    def type=(type)
      if type.nil?
        fail ArgumentError, 'invalid value for "type", type cannot be nil.'
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          attributes == o.attributes &&
          type == o.type
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [attributes, type].hash
    end
  end
end
