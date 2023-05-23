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
  # The monitor summary widget displays a summary view of all your Datadog monitors, or a subset based on a query. Only available on FREE layout dashboards.
  class MonitorSummaryWidgetDefinition
    include BaseGenericModel

    # Which color to use on the widget.
    attr_accessor :color_preference

    # The number of monitors to display.
    attr_accessor :count

    # What to display on the widget.
    attr_accessor :display_format

    # Whether to show counts of 0 or not.
    attr_accessor :hide_zero_counts

    # Query to filter the monitors with.
    attr_reader :query

    # Whether to show the time that has elapsed since the monitor/group triggered.
    attr_accessor :show_last_triggered

    # Whether to show the priorities column.
    attr_accessor :show_priority

    # Widget sorting methods.
    attr_accessor :sort

    # The start of the list. Typically 0.
    attr_accessor :start

    # Which summary type should be used.
    attr_accessor :summary_type

    # Title of the widget.
    attr_accessor :title

    # How to align the text on the widget.
    attr_accessor :title_align

    # Size of the title.
    attr_accessor :title_size

    # Type of the monitor summary widget.
    attr_reader :type

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'color_preference' => :'color_preference',
        :'count' => :'count',
        :'display_format' => :'display_format',
        :'hide_zero_counts' => :'hide_zero_counts',
        :'query' => :'query',
        :'show_last_triggered' => :'show_last_triggered',
        :'show_priority' => :'show_priority',
        :'sort' => :'sort',
        :'start' => :'start',
        :'summary_type' => :'summary_type',
        :'title' => :'title',
        :'title_align' => :'title_align',
        :'title_size' => :'title_size',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'color_preference' => :'WidgetColorPreference',
        :'count' => :'Integer',
        :'display_format' => :'WidgetMonitorSummaryDisplayFormat',
        :'hide_zero_counts' => :'Boolean',
        :'query' => :'String',
        :'show_last_triggered' => :'Boolean',
        :'show_priority' => :'Boolean',
        :'sort' => :'WidgetMonitorSummarySort',
        :'start' => :'Integer',
        :'summary_type' => :'WidgetSummaryType',
        :'title' => :'String',
        :'title_align' => :'WidgetTextAlign',
        :'title_size' => :'String',
        :'type' => :'MonitorSummaryWidgetDefinitionType'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::MonitorSummaryWidgetDefinition` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::MonitorSummaryWidgetDefinition`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'color_preference')
        self.color_preference = attributes[:'color_preference']
      end

      if attributes.key?(:'count')
        self.count = attributes[:'count']
      end

      if attributes.key?(:'display_format')
        self.display_format = attributes[:'display_format']
      end

      if attributes.key?(:'hide_zero_counts')
        self.hide_zero_counts = attributes[:'hide_zero_counts']
      end

      if attributes.key?(:'query')
        self.query = attributes[:'query']
      end

      if attributes.key?(:'show_last_triggered')
        self.show_last_triggered = attributes[:'show_last_triggered']
      end

      if attributes.key?(:'show_priority')
        self.show_priority = attributes[:'show_priority']
      end

      if attributes.key?(:'sort')
        self.sort = attributes[:'sort']
      end

      if attributes.key?(:'start')
        self.start = attributes[:'start']
      end

      if attributes.key?(:'summary_type')
        self.summary_type = attributes[:'summary_type']
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
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @query.nil?
      return false if @type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param query [Object] Object to be assigned
    # @!visibility private
    def query=(query)
      if query.nil?
        fail ArgumentError, 'invalid value for "query", query cannot be nil.'
      end
      @query = query
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
          color_preference == o.color_preference &&
          count == o.count &&
          display_format == o.display_format &&
          hide_zero_counts == o.hide_zero_counts &&
          query == o.query &&
          show_last_triggered == o.show_last_triggered &&
          show_priority == o.show_priority &&
          sort == o.sort &&
          start == o.start &&
          summary_type == o.summary_type &&
          title == o.title &&
          title_align == o.title_align &&
          title_size == o.title_size &&
          type == o.type
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [color_preference, count, display_format, hide_zero_counts, query, show_last_triggered, show_priority, sort, start, summary_type, title, title_align, title_size, type].hash
    end
  end
end
