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
  # This model is used to save CSV mappings for importing of payments.  It probably has very little practical use outside of our own UI
  class PaymentsCsvMapping
    attr_accessor :name

    attr_accessor :type

    attr_accessor :import_behaviour

    attr_accessor :pay_basis

    attr_accessor :has_header

    attr_accessor :payroll_code_index

    attr_accessor :employer_id_index

    attr_accessor :pay_amount_index

    attr_accessor :pay_amount_multiplier_index

    attr_accessor :note_index

    attr_accessor :pay_code_index

    attr_accessor :columns

    # [readonly] The unique id of the object
    attr_accessor :id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'type' => :'type',
        :'import_behaviour' => :'importBehaviour',
        :'pay_basis' => :'payBasis',
        :'has_header' => :'hasHeader',
        :'payroll_code_index' => :'payrollCodeIndex',
        :'employer_id_index' => :'employerIdIndex',
        :'pay_amount_index' => :'payAmountIndex',
        :'pay_amount_multiplier_index' => :'payAmountMultiplierIndex',
        :'note_index' => :'noteIndex',
        :'pay_code_index' => :'payCodeIndex',
        :'columns' => :'columns',
        :'id' => :'id'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'Object',
        :'type' => :'Object',
        :'import_behaviour' => :'Object',
        :'pay_basis' => :'Object',
        :'has_header' => :'Object',
        :'payroll_code_index' => :'Object',
        :'employer_id_index' => :'Object',
        :'pay_amount_index' => :'Object',
        :'pay_amount_multiplier_index' => :'Object',
        :'note_index' => :'Object',
        :'pay_code_index' => :'Object',
        :'columns' => :'Object',
        :'id' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'columns',
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SwaggerClient::PaymentsCsvMapping` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SwaggerClient::PaymentsCsvMapping`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'import_behaviour')
        self.import_behaviour = attributes[:'import_behaviour']
      end

      if attributes.key?(:'pay_basis')
        self.pay_basis = attributes[:'pay_basis']
      end

      if attributes.key?(:'has_header')
        self.has_header = attributes[:'has_header']
      end

      if attributes.key?(:'payroll_code_index')
        self.payroll_code_index = attributes[:'payroll_code_index']
      end

      if attributes.key?(:'employer_id_index')
        self.employer_id_index = attributes[:'employer_id_index']
      end

      if attributes.key?(:'pay_amount_index')
        self.pay_amount_index = attributes[:'pay_amount_index']
      end

      if attributes.key?(:'pay_amount_multiplier_index')
        self.pay_amount_multiplier_index = attributes[:'pay_amount_multiplier_index']
      end

      if attributes.key?(:'note_index')
        self.note_index = attributes[:'note_index']
      end

      if attributes.key?(:'pay_code_index')
        self.pay_code_index = attributes[:'pay_code_index']
      end

      if attributes.key?(:'columns')
        if (value = attributes[:'columns']).is_a?(Array)
          self.columns = value
        end
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          type == o.type &&
          import_behaviour == o.import_behaviour &&
          pay_basis == o.pay_basis &&
          has_header == o.has_header &&
          payroll_code_index == o.payroll_code_index &&
          employer_id_index == o.employer_id_index &&
          pay_amount_index == o.pay_amount_index &&
          pay_amount_multiplier_index == o.pay_amount_multiplier_index &&
          note_index == o.note_index &&
          pay_code_index == o.pay_code_index &&
          columns == o.columns &&
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
      [name, type, import_behaviour, pay_basis, has_header, payroll_code_index, employer_id_index, pay_amount_index, pay_amount_multiplier_index, note_index, pay_code_index, columns, id].hash
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
