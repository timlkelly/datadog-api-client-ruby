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
  # Object containing all metrics and their values collected for a Synthetic API test.
  # See the [Synthetic Monitoring Metrics documentation](https://docs.datadoghq.com/synthetics/metrics/).
  class SyntheticsTiming
    include BaseGenericModel

    # The duration in millisecond of the DNS lookup.
    attr_accessor :dns

    # The time in millisecond to download the response.
    attr_accessor :download

    # The time in millisecond to first byte.
    attr_accessor :first_byte

    # The duration in millisecond of the TLS handshake.
    attr_accessor :handshake

    # The time in millisecond spent during redirections.
    attr_accessor :redirect

    # The duration in millisecond of the TLS handshake.
    attr_accessor :ssl

    # Time in millisecond to establish the TCP connection.
    attr_accessor :tcp

    # The overall time in millisecond the request took to be processed.
    attr_accessor :total

    # Time spent in millisecond waiting for a response.
    attr_accessor :wait

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'dns' => :'dns',
        :'download' => :'download',
        :'first_byte' => :'firstByte',
        :'handshake' => :'handshake',
        :'redirect' => :'redirect',
        :'ssl' => :'ssl',
        :'tcp' => :'tcp',
        :'total' => :'total',
        :'wait' => :'wait'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'dns' => :'Float',
        :'download' => :'Float',
        :'first_byte' => :'Float',
        :'handshake' => :'Float',
        :'redirect' => :'Float',
        :'ssl' => :'Float',
        :'tcp' => :'Float',
        :'total' => :'Float',
        :'wait' => :'Float'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SyntheticsTiming` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::SyntheticsTiming`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'dns')
        self.dns = attributes[:'dns']
      end

      if attributes.key?(:'download')
        self.download = attributes[:'download']
      end

      if attributes.key?(:'first_byte')
        self.first_byte = attributes[:'first_byte']
      end

      if attributes.key?(:'handshake')
        self.handshake = attributes[:'handshake']
      end

      if attributes.key?(:'redirect')
        self.redirect = attributes[:'redirect']
      end

      if attributes.key?(:'ssl')
        self.ssl = attributes[:'ssl']
      end

      if attributes.key?(:'tcp')
        self.tcp = attributes[:'tcp']
      end

      if attributes.key?(:'total')
        self.total = attributes[:'total']
      end

      if attributes.key?(:'wait')
        self.wait = attributes[:'wait']
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
          dns == o.dns &&
          download == o.download &&
          first_byte == o.first_byte &&
          handshake == o.handshake &&
          redirect == o.redirect &&
          ssl == o.ssl &&
          tcp == o.tcp &&
          total == o.total &&
          wait == o.wait
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [dns, download, first_byte, handshake, redirect, ssl, tcp, total, wait].hash
    end
  end
end
