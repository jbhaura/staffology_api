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
  class DpsNotice
    attr_accessor :issue_date

    attr_accessor :effective_date

    attr_accessor :tax_year

    attr_accessor :sequence_number

    attr_accessor :type

    attr_accessor :form_type

    attr_accessor :forename

    attr_accessor :surname

    attr_accessor :ni_no

    attr_accessor :works_number

    attr_accessor :tax_code

    attr_accessor :week1_month1

    attr_accessor :previous_tax

    attr_accessor :previous_pay

    attr_accessor :plan_type

    attr_accessor :applied_on

    attr_accessor :employee

    # [readonly] The unique id of the object
    attr_accessor :id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'issue_date' => :'issueDate',
        :'effective_date' => :'effectiveDate',
        :'tax_year' => :'taxYear',
        :'sequence_number' => :'sequenceNumber',
        :'type' => :'type',
        :'form_type' => :'formType',
        :'forename' => :'forename',
        :'surname' => :'surname',
        :'ni_no' => :'niNo',
        :'works_number' => :'worksNumber',
        :'tax_code' => :'taxCode',
        :'week1_month1' => :'week1Month1',
        :'previous_tax' => :'previousTax',
        :'previous_pay' => :'previousPay',
        :'plan_type' => :'planType',
        :'applied_on' => :'appliedOn',
        :'employee' => :'employee',
        :'id' => :'id'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'issue_date' => :'Object',
        :'effective_date' => :'Object',
        :'tax_year' => :'Object',
        :'sequence_number' => :'Object',
        :'type' => :'Object',
        :'form_type' => :'Object',
        :'forename' => :'Object',
        :'surname' => :'Object',
        :'ni_no' => :'Object',
        :'works_number' => :'Object',
        :'tax_code' => :'Object',
        :'week1_month1' => :'Object',
        :'previous_tax' => :'Object',
        :'previous_pay' => :'Object',
        :'plan_type' => :'Object',
        :'applied_on' => :'Object',
        :'employee' => :'Object',
        :'id' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'form_type',
        :'forename',
        :'surname',
        :'ni_no',
        :'works_number',
        :'tax_code',
        :'week1_month1',
        :'previous_tax',
        :'previous_pay',
        :'applied_on',
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SwaggerClient::DpsNotice` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SwaggerClient::DpsNotice`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'issue_date')
        self.issue_date = attributes[:'issue_date']
      end

      if attributes.key?(:'effective_date')
        self.effective_date = attributes[:'effective_date']
      end

      if attributes.key?(:'tax_year')
        self.tax_year = attributes[:'tax_year']
      end

      if attributes.key?(:'sequence_number')
        self.sequence_number = attributes[:'sequence_number']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'form_type')
        self.form_type = attributes[:'form_type']
      end

      if attributes.key?(:'forename')
        self.forename = attributes[:'forename']
      end

      if attributes.key?(:'surname')
        self.surname = attributes[:'surname']
      end

      if attributes.key?(:'ni_no')
        self.ni_no = attributes[:'ni_no']
      end

      if attributes.key?(:'works_number')
        self.works_number = attributes[:'works_number']
      end

      if attributes.key?(:'tax_code')
        self.tax_code = attributes[:'tax_code']
      end

      if attributes.key?(:'week1_month1')
        self.week1_month1 = attributes[:'week1_month1']
      end

      if attributes.key?(:'previous_tax')
        self.previous_tax = attributes[:'previous_tax']
      end

      if attributes.key?(:'previous_pay')
        self.previous_pay = attributes[:'previous_pay']
      end

      if attributes.key?(:'plan_type')
        self.plan_type = attributes[:'plan_type']
      end

      if attributes.key?(:'applied_on')
        self.applied_on = attributes[:'applied_on']
      end

      if attributes.key?(:'employee')
        self.employee = attributes[:'employee']
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
          issue_date == o.issue_date &&
          effective_date == o.effective_date &&
          tax_year == o.tax_year &&
          sequence_number == o.sequence_number &&
          type == o.type &&
          form_type == o.form_type &&
          forename == o.forename &&
          surname == o.surname &&
          ni_no == o.ni_no &&
          works_number == o.works_number &&
          tax_code == o.tax_code &&
          week1_month1 == o.week1_month1 &&
          previous_tax == o.previous_tax &&
          previous_pay == o.previous_pay &&
          plan_type == o.plan_type &&
          applied_on == o.applied_on &&
          employee == o.employee &&
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
      [issue_date, effective_date, tax_year, sequence_number, type, form_type, forename, surname, ni_no, works_number, tax_code, week1_month1, previous_tax, previous_pay, plan_type, applied_on, employee, id].hash
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