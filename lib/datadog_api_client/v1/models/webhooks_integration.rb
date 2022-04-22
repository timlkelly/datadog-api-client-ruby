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
  # Datadog-Webhooks integration.
  class WebhooksIntegration
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # If `null`, uses no header.
    # If given a JSON payload, these will be headers attached to your webhook.
    attr_accessor :custom_headers

    # Encoding type. Can be given either `json` or `form`.
    attr_accessor :encode_as

    # The name of the webhook. It corresponds with `<WEBHOOK_NAME>`.
    # Learn more on how to use it in
    # [monitor notifications](https://docs.datadoghq.com/monitors/notify).
    attr_accessor :name

    # If `null`, uses the default payload.
    # If given a JSON payload, the webhook returns the payload
    # specified by the given payload.
    # [Webhooks variable usage](https://docs.datadoghq.com/integrations/webhooks/#usage).
    attr_accessor :payload

    # URL of the webhook.
    attr_accessor :url

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'custom_headers' => :'custom_headers',
        :'encode_as' => :'encode_as',
        :'name' => :'name',
        :'payload' => :'payload',
        :'url' => :'url'
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
        :'custom_headers' => :'String',
        :'encode_as' => :'WebhooksIntegrationEncoding',
        :'name' => :'String',
        :'payload' => :'String',
        :'url' => :'String'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'custom_headers',
        :'payload',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::WebhooksIntegration` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::WebhooksIntegration`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'custom_headers')
        self.custom_headers = attributes[:'custom_headers']
      end

      if attributes.key?(:'encode_as')
        self.encode_as = attributes[:'encode_as']
      else
        self.encode_as = 'json'
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'payload')
        self.payload = attributes[:'payload']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @name.nil?
      return false if @url.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param name [Object] Object to be assigned
    # @!visibility private
    def name=(name)
      if name.nil?
        fail ArgumentError, 'invalid value for "name", name cannot be nil.'
      end
      @name = name
    end

    # Custom attribute writer method with validation
    # @param url [Object] Object to be assigned
    # @!visibility private
    def url=(url)
      if url.nil?
        fail ArgumentError, 'invalid value for "url", url cannot be nil.'
      end
      @url = url
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          custom_headers == o.custom_headers &&
          encode_as == o.encode_as &&
          name == o.name &&
          payload == o.payload &&
          url == o.url
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
      [custom_headers, encode_as, name, payload, url].hash
    end
  end
end
