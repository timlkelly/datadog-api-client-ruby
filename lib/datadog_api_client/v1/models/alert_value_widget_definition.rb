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
  # Alert values are query values showing the current value of the metric in any monitor defined on your system.
  class AlertValueWidgetDefinition
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # ID of the alert to use in the widget.
    attr_accessor :alert_id

    # Number of decimal to show. If not defined, will use the raw value.
    attr_accessor :precision

    # How to align the text on the widget.
    attr_accessor :text_align

    # Title of the widget.
    attr_accessor :title

    # How to align the text on the widget.
    attr_accessor :title_align

    # Size of value in the widget.
    attr_accessor :title_size

    # Type of the alert value widget.
    attr_accessor :type

    # Unit to display with the value.
    attr_accessor :unit

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'alert_id' => :'alert_id',
        :'precision' => :'precision',
        :'text_align' => :'text_align',
        :'title' => :'title',
        :'title_align' => :'title_align',
        :'title_size' => :'title_size',
        :'type' => :'type',
        :'unit' => :'unit'
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
        :'alert_id' => :'String',
        :'precision' => :'Integer',
        :'text_align' => :'WidgetTextAlign',
        :'title' => :'String',
        :'title_align' => :'WidgetTextAlign',
        :'title_size' => :'String',
        :'type' => :'AlertValueWidgetDefinitionType',
        :'unit' => :'String'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::AlertValueWidgetDefinition` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::AlertValueWidgetDefinition`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'alert_id')
        self.alert_id = attributes[:'alert_id']
      end

      if attributes.key?(:'precision')
        self.precision = attributes[:'precision']
      end

      if attributes.key?(:'text_align')
        self.text_align = attributes[:'text_align']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'title_align')
        self.title_align = attributes[:'title_align']
      end

      if attributes.key?(:'title_size')
        self.title_size = attributes[:'title_size']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = 'alert_value'
      end

      if attributes.key?(:'unit')
        self.unit = attributes[:'unit']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    # @!visibility private
    def list_invalid_properties
      invalid_properties = Array.new
      if @alert_id.nil?
        invalid_properties.push('invalid value for "alert_id", alert_id cannot be nil.')
      end
      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @alert_id.nil?
      return false if @type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param alert_id [Object] Object to be assigned
    # @!visibility private
    def alert_id=(alert_id)
      if alert_id.nil?
        fail ArgumentError, 'invalid value for "alert_id", alert_id cannot be nil.'
      end
      @alert_id = alert_id
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
          alert_id == o.alert_id &&
          precision == o.precision &&
          text_align == o.text_align &&
          title == o.title &&
          title_align == o.title_align &&
          title_size == o.title_size &&
          type == o.type &&
          unit == o.unit
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
      [alert_id, precision, text_align, title, title_align, title_size, type, unit].hash
    end
  end
end
