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
  # The log query.
  class LogQueryDefinition
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Define computation for a log query.
    attr_accessor :compute

    # List of tag prefixes to group by in the case of a cluster check.
    attr_accessor :group_by

    # A coma separated-list of index names. Use "*" query all indexes at once. [Multiple Indexes](https://docs.datadoghq.com/logs/indexes/#multiple-indexes)
    attr_accessor :index

    # This field is mutually exclusive with `compute`.
    attr_accessor :multi_compute

    # The query being made on the logs.
    attr_accessor :search

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'compute' => :'compute',
        :'group_by' => :'group_by',
        :'index' => :'index',
        :'multi_compute' => :'multi_compute',
        :'search' => :'search'
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
        :'compute' => :'LogsQueryCompute',
        :'group_by' => :'Array<LogQueryDefinitionGroupBy>',
        :'index' => :'String',
        :'multi_compute' => :'Array<LogsQueryCompute>',
        :'search' => :'LogQueryDefinitionSearch'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::LogQueryDefinition` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::LogQueryDefinition`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'compute')
        self.compute = attributes[:'compute']
      end

      if attributes.key?(:'group_by')
        if (value = attributes[:'group_by']).is_a?(Array)
          self.group_by = value
        end
      end

      if attributes.key?(:'index')
        self.index = attributes[:'index']
      end

      if attributes.key?(:'multi_compute')
        if (value = attributes[:'multi_compute']).is_a?(Array)
          self.multi_compute = value
        end
      end

      if attributes.key?(:'search')
        self.search = attributes[:'search']
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
          compute == o.compute &&
          group_by == o.group_by &&
          index == o.index &&
          multi_compute == o.multi_compute &&
          search == o.search
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
      [compute, group_by, index, multi_compute, search].hash
    end
  end
end
