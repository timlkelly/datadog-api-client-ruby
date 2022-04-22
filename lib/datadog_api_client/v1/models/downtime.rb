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
  # Downtiming gives you greater control over monitor notifications by
  # allowing you to globally exclude scopes from alerting.
  # Downtime settings, which can be scheduled with start and end times,
  # prevent all alerting related to specified Datadog tags.
  class Downtime
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # If a scheduled downtime currently exists.
    attr_accessor :active

    # The downtime object definition of the active child for the original parent recurring downtime. This
    # field will only exist on recurring downtimes.
    attr_accessor :active_child

    # If a scheduled downtime is canceled.
    attr_accessor :canceled

    # User ID of the downtime creator.
    attr_accessor :creator_id

    # If a downtime has been disabled.
    attr_accessor :disabled

    # `0` for a downtime applied on `*` or all,
    # `1` when the downtime is only scoped to hosts,
    # or `2` when the downtime is scoped to anything but hosts.
    attr_accessor :downtime_type

    # POSIX timestamp to end the downtime. If not provided,
    # the downtime is in effect indefinitely until you cancel it.
    attr_accessor :_end

    # The downtime ID.
    attr_accessor :id

    # A message to include with notifications for this downtime.
    # Email notifications can be sent to specific users by using the same `@username` notation as events.
    attr_accessor :message

    # A single monitor to which the downtime applies.
    # If not provided, the downtime applies to all monitors.
    attr_accessor :monitor_id

    # A comma-separated list of monitor tags. For example, tags that are applied directly to monitors,
    # not tags that are used in monitor queries (which are filtered by the scope parameter), to which the downtime applies.
    # The resulting downtime applies to monitors that match ALL provided monitor tags.
    # For example, `service:postgres` **AND** `team:frontend`.
    attr_accessor :monitor_tags

    # ID of the parent Downtime.
    attr_accessor :parent_id

    # An object defining the recurrence of the downtime.
    attr_accessor :recurrence

    # The scope(s) to which the downtime applies. For example, `host:app2`.
    # Provide multiple scopes as a comma-separated list like `env:dev,env:prod`.
    # The resulting downtime applies to sources that matches ALL provided scopes (`env:dev` **AND** `env:prod`).
    attr_accessor :scope

    # POSIX timestamp to start the downtime.
    # If not provided, the downtime starts the moment it is created.
    attr_accessor :start

    # The timezone in which to display the downtime's start and end times in Datadog applications.
    attr_accessor :timezone

    # ID of the last user that updated the downtime.
    attr_accessor :updater_id

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'active' => :'active',
        :'active_child' => :'active_child',
        :'canceled' => :'canceled',
        :'creator_id' => :'creator_id',
        :'disabled' => :'disabled',
        :'downtime_type' => :'downtime_type',
        :'_end' => :'end',
        :'id' => :'id',
        :'message' => :'message',
        :'monitor_id' => :'monitor_id',
        :'monitor_tags' => :'monitor_tags',
        :'parent_id' => :'parent_id',
        :'recurrence' => :'recurrence',
        :'scope' => :'scope',
        :'start' => :'start',
        :'timezone' => :'timezone',
        :'updater_id' => :'updater_id'
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
        :'active' => :'Boolean',
        :'active_child' => :'DowntimeChild',
        :'canceled' => :'Integer',
        :'creator_id' => :'Integer',
        :'disabled' => :'Boolean',
        :'downtime_type' => :'Integer',
        :'_end' => :'Integer',
        :'id' => :'Integer',
        :'message' => :'String',
        :'monitor_id' => :'Integer',
        :'monitor_tags' => :'Array<String>',
        :'parent_id' => :'Integer',
        :'recurrence' => :'DowntimeRecurrence',
        :'scope' => :'Array<String>',
        :'start' => :'Integer',
        :'timezone' => :'String',
        :'updater_id' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'active_child',
        :'canceled',
        :'_end',
        :'monitor_id',
        :'parent_id',
        :'recurrence',
        :'updater_id',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::Downtime` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::Downtime`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'active')
        self.active = attributes[:'active']
      end

      if attributes.key?(:'active_child')
        self.active_child = attributes[:'active_child']
      end

      if attributes.key?(:'canceled')
        self.canceled = attributes[:'canceled']
      end

      if attributes.key?(:'creator_id')
        self.creator_id = attributes[:'creator_id']
      end

      if attributes.key?(:'disabled')
        self.disabled = attributes[:'disabled']
      end

      if attributes.key?(:'downtime_type')
        self.downtime_type = attributes[:'downtime_type']
      end

      if attributes.key?(:'_end')
        self._end = attributes[:'_end']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.key?(:'monitor_id')
        self.monitor_id = attributes[:'monitor_id']
      end

      if attributes.key?(:'monitor_tags')
        if (value = attributes[:'monitor_tags']).is_a?(Array)
          self.monitor_tags = value
        end
      end

      if attributes.key?(:'parent_id')
        self.parent_id = attributes[:'parent_id']
      end

      if attributes.key?(:'recurrence')
        self.recurrence = attributes[:'recurrence']
      end

      if attributes.key?(:'scope')
        if (value = attributes[:'scope']).is_a?(Array)
          self.scope = value
        end
      end

      if attributes.key?(:'start')
        self.start = attributes[:'start']
      end

      if attributes.key?(:'timezone')
        self.timezone = attributes[:'timezone']
      end

      if attributes.key?(:'updater_id')
        self.updater_id = attributes[:'updater_id']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@creator_id.nil? && @creator_id > 2147483647
      return false if !@downtime_type.nil? && @downtime_type > 2147483647
      return false if !@updater_id.nil? && @updater_id > 2147483647
      true
    end

    # Custom attribute writer method with validation
    # @param creator_id [Object] Object to be assigned
    # @!visibility private
    def creator_id=(creator_id)
      if !creator_id.nil? && creator_id > 2147483647
        fail ArgumentError, 'invalid value for "creator_id", must be smaller than or equal to 2147483647.'
      end
      @creator_id = creator_id
    end

    # Custom attribute writer method with validation
    # @param downtime_type [Object] Object to be assigned
    # @!visibility private
    def downtime_type=(downtime_type)
      if !downtime_type.nil? && downtime_type > 2147483647
        fail ArgumentError, 'invalid value for "downtime_type", must be smaller than or equal to 2147483647.'
      end
      @downtime_type = downtime_type
    end

    # Custom attribute writer method with validation
    # @param updater_id [Object] Object to be assigned
    # @!visibility private
    def updater_id=(updater_id)
      if !updater_id.nil? && updater_id > 2147483647
        fail ArgumentError, 'invalid value for "updater_id", must be smaller than or equal to 2147483647.'
      end
      @updater_id = updater_id
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          active == o.active &&
          active_child == o.active_child &&
          canceled == o.canceled &&
          creator_id == o.creator_id &&
          disabled == o.disabled &&
          downtime_type == o.downtime_type &&
          _end == o._end &&
          id == o.id &&
          message == o.message &&
          monitor_id == o.monitor_id &&
          monitor_tags == o.monitor_tags &&
          parent_id == o.parent_id &&
          recurrence == o.recurrence &&
          scope == o.scope &&
          start == o.start &&
          timezone == o.timezone &&
          updater_id == o.updater_id
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
      [active, active_child, canceled, creator_id, disabled, downtime_type, _end, id, message, monitor_id, monitor_tags, parent_id, recurrence, scope, start, timezone, updater_id].hash
    end
  end
end
