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
  # Configuration object for a Synthetic test.
  class SyntheticsTestConfig
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Array of assertions used for the test. Required for single API tests.
    attr_accessor :assertions

    # Array of variables used for the test.
    attr_accessor :config_variables

    # Object describing the Synthetic test request.
    attr_accessor :request

    # Browser tests only - array of variables used for the test steps.
    attr_accessor :variables

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'assertions' => :'assertions',
        :'config_variables' => :'configVariables',
        :'request' => :'request',
        :'variables' => :'variables'
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
        :'assertions' => :'Array<SyntheticsAssertion>',
        :'config_variables' => :'Array<SyntheticsConfigVariable>',
        :'request' => :'SyntheticsTestRequest',
        :'variables' => :'Array<SyntheticsBrowserVariable>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SyntheticsTestConfig` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::SyntheticsTestConfig`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'assertions')
        if (value = attributes[:'assertions']).is_a?(Array)
          self.assertions = value
        end
      else
        self.assertions = []
      end

      if attributes.key?(:'config_variables')
        if (value = attributes[:'config_variables']).is_a?(Array)
          self.config_variables = value
        end
      end

      if attributes.key?(:'request')
        self.request = attributes[:'request']
      end

      if attributes.key?(:'variables')
        if (value = attributes[:'variables']).is_a?(Array)
          self.variables = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    # @!visibility private
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
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
          assertions == o.assertions &&
          config_variables == o.config_variables &&
          request == o.request &&
          variables == o.variables
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
      [assertions, config_variables, request, variables].hash
    end
  end
end
