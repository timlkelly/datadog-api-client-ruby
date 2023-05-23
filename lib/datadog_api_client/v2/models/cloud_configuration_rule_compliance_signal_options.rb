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
  # How to generate compliance signals. Useful for cloud_configuration rules only.
  class CloudConfigurationRuleComplianceSignalOptions
    include BaseGenericModel

    # Whether signals will be sent.
    attr_accessor :user_activation_status

    # Fields to use to group findings by when sending signals.
    attr_accessor :user_group_by_fields

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'user_activation_status' => :'userActivationStatus',
        :'user_group_by_fields' => :'userGroupByFields'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'user_activation_status' => :'Boolean',
        :'user_group_by_fields' => :'Array<String>'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'user_activation_status',
        :'user_group_by_fields',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::CloudConfigurationRuleComplianceSignalOptions` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::CloudConfigurationRuleComplianceSignalOptions`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'user_activation_status')
        self.user_activation_status = attributes[:'user_activation_status']
      end

      if attributes.key?(:'user_group_by_fields')
        if (value = attributes[:'user_group_by_fields']).is_a?(Array)
          self.user_group_by_fields = value
        end
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
          user_activation_status == o.user_activation_status &&
          user_group_by_fields == o.user_group_by_fields
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [user_activation_status, user_group_by_fields].hash
    end
  end
end
