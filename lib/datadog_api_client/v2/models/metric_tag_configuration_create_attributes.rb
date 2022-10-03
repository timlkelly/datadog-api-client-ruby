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
  # Object containing the definition of a metric tag configuration to be created.
  class MetricTagConfigurationCreateAttributes
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # A list of queryable aggregation combinations for a count, rate, or gauge metric.
    # By default, count and rate metrics require the (time: sum, space: sum) aggregation and
    # Gauge metrics require the (time: avg, space: avg) aggregation.
    # Additional time & space combinations are also available:
    #
    # - time: avg, space: avg
    # - time: avg, space: max
    # - time: avg, space: min
    # - time: avg, space: sum
    # - time: count, space: sum
    # - time: max, space: max
    # - time: min, space: min
    # - time: sum, space: avg
    # - time: sum, space: sum
    #
    # Can only be applied to metrics that have a `metric_type` of `count`, `rate`, or `gauge`.
    attr_accessor :aggregations

    # Toggle to include/exclude percentiles for a distribution metric.
    # Defaults to false. Can only be applied to metrics that have a `metric_type` of `distribution`.
    attr_accessor :include_percentiles

    # The metric's type.
    attr_accessor :metric_type

    # A list of tag keys that will be queryable for your metric.
    attr_accessor :tags

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'aggregations' => :'aggregations',
        :'include_percentiles' => :'include_percentiles',
        :'metric_type' => :'metric_type',
        :'tags' => :'tags'
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
        :'aggregations' => :'Array<MetricCustomAggregation>',
        :'include_percentiles' => :'Boolean',
        :'metric_type' => :'MetricTagConfigurationMetricTypes',
        :'tags' => :'Array<String>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::MetricTagConfigurationCreateAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::MetricTagConfigurationCreateAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'aggregations')
        if (value = attributes[:'aggregations']).is_a?(Array)
          self.aggregations = value
        end
      end

      if attributes.key?(:'include_percentiles')
        self.include_percentiles = attributes[:'include_percentiles']
      end

      if attributes.key?(:'metric_type')
        self.metric_type = attributes[:'metric_type']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @metric_type.nil?
      return false if @tags.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param metric_type [Object] Object to be assigned
    # @!visibility private
    def metric_type=(metric_type)
      if metric_type.nil?
        fail ArgumentError, 'invalid value for "metric_type", metric_type cannot be nil.'
      end
      @metric_type = metric_type
    end

    # Custom attribute writer method with validation
    # @param tags [Object] Object to be assigned
    # @!visibility private
    def tags=(tags)
      if tags.nil?
        fail ArgumentError, 'invalid value for "tags", tags cannot be nil.'
      end
      @tags = tags
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          aggregations == o.aggregations &&
          include_percentiles == o.include_percentiles &&
          metric_type == o.metric_type &&
          tags == o.tags
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
      [aggregations, include_percentiles, metric_type, tags].hash
    end
  end
end
