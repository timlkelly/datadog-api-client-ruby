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
  # Object describing the SSL certificate used for a Synthetic test.
  class SyntheticsSSLCertificate
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Cipher used for the connection.
    attr_accessor :cipher

    # Exponent associated to the certificate.
    attr_accessor :exponent

    # Array of extensions and details used for the certificate.
    attr_accessor :ext_key_usage

    # MD5 digest of the DER-encoded Certificate information.
    attr_accessor :fingerprint

    # SHA-1 digest of the DER-encoded Certificate information.
    attr_accessor :fingerprint256

    # Object describing the issuer of a SSL certificate.
    attr_accessor :issuer

    # Modulus associated to the SSL certificate private key.
    attr_accessor :modulus

    # TLS protocol used for the test.
    attr_accessor :protocol

    # Serial Number assigned by Symantec to the SSL certificate.
    attr_accessor :serial_number

    # Object describing the SSL certificate used for the test.
    attr_accessor :subject

    # Date from which the SSL certificate is valid.
    attr_accessor :valid_from

    # Date until which the SSL certificate is valid.
    attr_accessor :valid_to

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'cipher' => :'cipher',
        :'exponent' => :'exponent',
        :'ext_key_usage' => :'extKeyUsage',
        :'fingerprint' => :'fingerprint',
        :'fingerprint256' => :'fingerprint256',
        :'issuer' => :'issuer',
        :'modulus' => :'modulus',
        :'protocol' => :'protocol',
        :'serial_number' => :'serialNumber',
        :'subject' => :'subject',
        :'valid_from' => :'validFrom',
        :'valid_to' => :'validTo'
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
        :'cipher' => :'String',
        :'exponent' => :'Float',
        :'ext_key_usage' => :'Array<String>',
        :'fingerprint' => :'String',
        :'fingerprint256' => :'String',
        :'issuer' => :'SyntheticsSSLCertificateIssuer',
        :'modulus' => :'String',
        :'protocol' => :'String',
        :'serial_number' => :'String',
        :'subject' => :'SyntheticsSSLCertificateSubject',
        :'valid_from' => :'Time',
        :'valid_to' => :'Time'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SyntheticsSSLCertificate` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::SyntheticsSSLCertificate`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'cipher')
        self.cipher = attributes[:'cipher']
      end

      if attributes.key?(:'exponent')
        self.exponent = attributes[:'exponent']
      end

      if attributes.key?(:'ext_key_usage')
        if (value = attributes[:'ext_key_usage']).is_a?(Array)
          self.ext_key_usage = value
        end
      end

      if attributes.key?(:'fingerprint')
        self.fingerprint = attributes[:'fingerprint']
      end

      if attributes.key?(:'fingerprint256')
        self.fingerprint256 = attributes[:'fingerprint256']
      end

      if attributes.key?(:'issuer')
        self.issuer = attributes[:'issuer']
      end

      if attributes.key?(:'modulus')
        self.modulus = attributes[:'modulus']
      end

      if attributes.key?(:'protocol')
        self.protocol = attributes[:'protocol']
      end

      if attributes.key?(:'serial_number')
        self.serial_number = attributes[:'serial_number']
      end

      if attributes.key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.key?(:'valid_from')
        self.valid_from = attributes[:'valid_from']
      end

      if attributes.key?(:'valid_to')
        self.valid_to = attributes[:'valid_to']
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
          cipher == o.cipher &&
          exponent == o.exponent &&
          ext_key_usage == o.ext_key_usage &&
          fingerprint == o.fingerprint &&
          fingerprint256 == o.fingerprint256 &&
          issuer == o.issuer &&
          modulus == o.modulus &&
          protocol == o.protocol &&
          serial_number == o.serial_number &&
          subject == o.subject &&
          valid_from == o.valid_from &&
          valid_to == o.valid_to
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
      [cipher, exponent, ext_key_usage, fingerprint, fingerprint256, issuer, modulus, protocol, serial_number, subject, valid_from, valid_to].hash
    end
  end
end
