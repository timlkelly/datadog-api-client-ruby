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
  # Use the Category Processor to add a new attribute (without spaces or special characters in the new attribute name)
  # to a log matching a provided search query. Use categories to create groups for an analytical view.
  # For example, URL groups, machine groups, environments, and response time buckets.
  # 
  # **Notes**:
  # 
  # - The syntax of the query is the one of Logs Explorer search bar.
  #   The query can be done on any log attribute or tag, whether it is a facet or not.
  #   Wildcards can also be used inside your query.
  # - Once the log has matched one of the Processor queries, it stops.
  #   Make sure they are properly ordered in case a log could match several queries.
  # - The names of the categories must be unique.
  # - Once defined in the Category Processor, you can map categories to log status using the Log Status Remapper.
  class LogsCategoryProcessor
    include BaseGenericModel

    # Array of filters to match or not a log and their
    # corresponding `name` to assign a custom value to the log.
    attr_reader :categories

    # Whether or not the processor is enabled.
    attr_accessor :is_enabled

    # Name of the processor.
    attr_accessor :name

    # Name of the target attribute which value is defined by the matching category.
    attr_reader :target

    # Type of logs category processor.
    attr_reader :type

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'categories' => :'categories',
        :'is_enabled' => :'is_enabled',
        :'name' => :'name',
        :'target' => :'target',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'categories' => :'Array<LogsCategoryProcessorCategory>',
        :'is_enabled' => :'Boolean',
        :'name' => :'String',
        :'target' => :'String',
        :'type' => :'LogsCategoryProcessorType'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::LogsCategoryProcessor` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::LogsCategoryProcessor`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'categories')
        if (value = attributes[:'categories']).is_a?(Array)
          self.categories = value
        end
      end

      if attributes.key?(:'is_enabled')
        self.is_enabled = attributes[:'is_enabled']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'target')
        self.target = attributes[:'target']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @categories.nil?
      return false if @target.nil?
      return false if @type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param categories [Object] Object to be assigned
    # @!visibility private
    def categories=(categories)
      if categories.nil?
        fail ArgumentError, 'invalid value for "categories", categories cannot be nil.'
      end
      @categories = categories
    end

    # Custom attribute writer method with validation
    # @param target [Object] Object to be assigned
    # @!visibility private
    def target=(target)
      if target.nil?
        fail ArgumentError, 'invalid value for "target", target cannot be nil.'
      end
      @target = target
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
          categories == o.categories &&
          is_enabled == o.is_enabled &&
          name == o.name &&
          target == o.target &&
          type == o.type
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [categories, is_enabled, name, target, type].hash
    end
  end
end
