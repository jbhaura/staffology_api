=begin
#Staffology Payroll API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1
Contact: duane@staffology.co.uk
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.29
=end

require 'date'

module SwaggerClient
  class GovTalkSubmission
    attr_accessor :raw_response

    attr_accessor :message_class

    attr_accessor :poll_interval

    attr_accessor :last_poll

    attr_accessor :correlation_id

    attr_accessor :url

    attr_accessor :status

    attr_accessor :message

    attr_accessor :i_rmark

    attr_accessor :errors_json

    attr_accessor :errors

    attr_accessor :submitted_at

    # [readonly] The unique id of the object
    attr_accessor :id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'raw_response' => :'rawResponse',
        :'message_class' => :'messageClass',
        :'poll_interval' => :'pollInterval',
        :'last_poll' => :'lastPoll',
        :'correlation_id' => :'correlationId',
        :'url' => :'url',
        :'status' => :'status',
        :'message' => :'message',
        :'i_rmark' => :'iRmark',
        :'errors_json' => :'errorsJson',
        :'errors' => :'errors',
        :'submitted_at' => :'submittedAt',
        :'id' => :'id'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'raw_response' => :'Object',
        :'message_class' => :'Object',
        :'poll_interval' => :'Object',
        :'last_poll' => :'Object',
        :'correlation_id' => :'Object',
        :'url' => :'Object',
        :'status' => :'Object',
        :'message' => :'Object',
        :'i_rmark' => :'Object',
        :'errors_json' => :'Object',
        :'errors' => :'Object',
        :'submitted_at' => :'Object',
        :'id' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'raw_response',
        :'message_class',
        :'last_poll',
        :'correlation_id',
        :'url',
        :'message',
        :'i_rmark',
        :'errors_json',
        :'errors',
        :'submitted_at',
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SwaggerClient::GovTalkSubmission` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SwaggerClient::GovTalkSubmission`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'raw_response')
        self.raw_response = attributes[:'raw_response']
      end

      if attributes.key?(:'message_class')
        self.message_class = attributes[:'message_class']
      end

      if attributes.key?(:'poll_interval')
        self.poll_interval = attributes[:'poll_interval']
      end

      if attributes.key?(:'last_poll')
        self.last_poll = attributes[:'last_poll']
      end

      if attributes.key?(:'correlation_id')
        self.correlation_id = attributes[:'correlation_id']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.key?(:'i_rmark')
        self.i_rmark = attributes[:'i_rmark']
      end

      if attributes.key?(:'errors_json')
        self.errors_json = attributes[:'errors_json']
      end

      if attributes.key?(:'errors')
        if (value = attributes[:'errors']).is_a?(Array)
          self.errors = value
        end
      end

      if attributes.key?(:'submitted_at')
        self.submitted_at = attributes[:'submitted_at']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
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
          raw_response == o.raw_response &&
          message_class == o.message_class &&
          poll_interval == o.poll_interval &&
          last_poll == o.last_poll &&
          correlation_id == o.correlation_id &&
          url == o.url &&
          status == o.status &&
          message == o.message &&
          i_rmark == o.i_rmark &&
          errors_json == o.errors_json &&
          errors == o.errors &&
          submitted_at == o.submitted_at &&
          id == o.id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [raw_response, message_class, poll_interval, last_poll, correlation_id, url, status, message, i_rmark, errors_json, errors, submitted_at, id].hash
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
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
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
        SwaggerClient.const_get(type).build_from_hash(value)
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
    end  end
end
