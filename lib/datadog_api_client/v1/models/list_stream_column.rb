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
  # Widget column.
  class ListStreamColumn
    include BaseGenericModel

    # Widget column field.
    attr_reader :field

    # Widget column width.
    attr_reader :width

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'field' => :'field',
        :'width' => :'width'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'field' => :'String',
        :'width' => :'ListStreamColumnWidth'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::ListStreamColumn` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::ListStreamColumn`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'field')
        self.field = attributes[:'field']
      end

      if attributes.key?(:'width')
        self.width = attributes[:'width']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @field.nil?
      return false if @width.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param field [Object] Object to be assigned
    # @!visibility private
    def field=(field)
      if field.nil?
        fail ArgumentError, 'invalid value for "field", field cannot be nil.'
      end
      @field = field
    end

    # Custom attribute writer method with validation
    # @param width [Object] Object to be assigned
    # @!visibility private
    def width=(width)
      if width.nil?
        fail ArgumentError, 'invalid value for "width", width cannot be nil.'
      end
      @width = width
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          field == o.field &&
          width == o.width
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [field, width].hash
    end
  end
end
