=begin
#FreeClimb API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 0.0.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'date'

module Freeclimb
  class ApplicationRequest
    # A human readable description of the application, with maximum length 64 characters.
    attr_accessor :_alias

    # The URL that FreeClimb will request when an inbound call arrives on a phone number assigned to this application. Used only for inbound calls.
    attr_accessor :voice_url

    # The URL that FreeClimb will request if it times out waiting for a response from the voiceUrl. Used for inbound calls only. Note: A PerCL response is expected to control the inbound call.
    attr_accessor :voice_fallback_url

    # The URL that FreeClimb will request when an outbound call request is complete. Used for outbound calls only.  Note: A PerCL response is expected if the outbound call is connected (status=InProgress) to control the call.
    attr_accessor :call_connect_url

    # The URL that FreeClimb will request to pass call status (such as call ended) to the application.  Note: This is a notification only; any PerCL returned will be ignored.
    attr_accessor :status_callback_url

    # The URL that FreeClimb will request when a phone number assigned to this application receives an incoming SMS message. Used for inbound SMS only.  Note: Any PerCL returned will be ignored.
    attr_accessor :sms_url

    # The URL that FreeClimb will request if it times out waiting for a response from the smsUrl. Used for inbound SMS only.  Note: Any PerCL returned will be ignored.
    attr_accessor :sms_fallback_url

    # The requestId for this request starting with prefix \"RQ\" followed by 40 hexadecimal characters. FreeClimb logs generated while processing this request will include this requestId. If it is not provided, FreeClimb will generate a requestId and return it as a header in the response, e.g. X-Pulse-Request-Id: <requestId>
    attr_accessor :request_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'_alias' => :'alias',
        :'voice_url' => :'voiceUrl',
        :'voice_fallback_url' => :'voiceFallbackUrl',
        :'call_connect_url' => :'callConnectUrl',
        :'status_callback_url' => :'statusCallbackUrl',
        :'sms_url' => :'smsUrl',
        :'sms_fallback_url' => :'smsFallbackUrl',
        :'request_id' => :'requestId'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'_alias' => :'String',
        :'voice_url' => :'String',
        :'voice_fallback_url' => :'String',
        :'call_connect_url' => :'String',
        :'status_callback_url' => :'String',
        :'sms_url' => :'String',
        :'sms_fallback_url' => :'String',
        :'request_id' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Freeclimb::ApplicationRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Freeclimb::ApplicationRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'_alias')
        self._alias = attributes[:'_alias']
      end

      if attributes.key?(:'voice_url')
        self.voice_url = attributes[:'voice_url']
      end

      if attributes.key?(:'voice_fallback_url')
        self.voice_fallback_url = attributes[:'voice_fallback_url']
      end

      if attributes.key?(:'call_connect_url')
        self.call_connect_url = attributes[:'call_connect_url']
      end

      if attributes.key?(:'status_callback_url')
        self.status_callback_url = attributes[:'status_callback_url']
      end

      if attributes.key?(:'sms_url')
        self.sms_url = attributes[:'sms_url']
      end

      if attributes.key?(:'sms_fallback_url')
        self.sms_fallback_url = attributes[:'sms_fallback_url']
      end

      if attributes.key?(:'request_id')
        self.request_id = attributes[:'request_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _alias == o._alias &&
          voice_url == o.voice_url &&
          voice_fallback_url == o.voice_fallback_url &&
          call_connect_url == o.call_connect_url &&
          status_callback_url == o.status_callback_url &&
          sms_url == o.sms_url &&
          sms_fallback_url == o.sms_fallback_url &&
          request_id == o.request_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [_alias, voice_url, voice_fallback_url, call_connect_url, status_callback_url, sms_url, sms_fallback_url, request_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        Freeclimb.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end
        
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end