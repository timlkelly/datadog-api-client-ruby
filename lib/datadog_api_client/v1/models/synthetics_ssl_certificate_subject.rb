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
  # Object describing the SSL certificate used for the test.
  class SyntheticsSSLCertificateSubject
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Country Name associated with the certificate.
    attr_accessor :c

    # Common Name that associated with the certificate.
    attr_accessor :cn

    # Locality associated with the certificate.
    attr_accessor :l

    # Organization associated with the certificate.
    attr_accessor :o

    # Organizational Unit associated with the certificate.
    attr_accessor :ou

    # State Or Province Name associated with the certificate.
    attr_accessor :st

    # Subject Alternative Name associated with the certificate.
    attr_accessor :alt_name

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'c' => :'C',
        :'cn' => :'CN',
        :'l' => :'L',
        :'o' => :'O',
        :'ou' => :'OU',
        :'st' => :'ST',
        :'alt_name' => :'altName'
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
        :'c' => :'String',
        :'cn' => :'String',
        :'l' => :'String',
        :'o' => :'String',
        :'ou' => :'String',
        :'st' => :'String',
        :'alt_name' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SyntheticsSSLCertificateSubject` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::SyntheticsSSLCertificateSubject`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'c')
        self.c = attributes[:'c']
      end

      if attributes.key?(:'cn')
        self.cn = attributes[:'cn']
      end

      if attributes.key?(:'l')
        self.l = attributes[:'l']
      end

      if attributes.key?(:'o')
        self.o = attributes[:'o']
      end

      if attributes.key?(:'ou')
        self.ou = attributes[:'ou']
      end

      if attributes.key?(:'st')
        self.st = attributes[:'st']
      end

      if attributes.key?(:'alt_name')
        self.alt_name = attributes[:'alt_name']
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
          c == o.c &&
          cn == o.cn &&
          l == o.l &&
          o == o.o &&
          ou == o.ou &&
          st == o.st &&
          alt_name == o.alt_name
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
      [c, cn, l, o, ou, st, alt_name].hash
    end
  end
end
