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
  # Included as part of the PayRunEntry model to provide details of how the National Insurance Contribution was calculated.\\n  Unless the PayRunEntry.ManualNi property is set to true then these value will all be read-only and are recalculated everytime a payrun is updated.
  class NationalInsuranceCalculation
    attr_accessor :earnings_upto_including_lel

    attr_accessor :earnings_above_lel_upto_including_pt

    attr_accessor :earnings_above_pt_upto_including_st

    attr_accessor :earnings_above_pt_upto_including_uel

    attr_accessor :earnings_above_st_upto_including_uel

    attr_accessor :earnings_above_uel

    # Employee National Insurance Gross Value
    attr_accessor :employee_ni_gross

    # Employee National Insurance Rebate Value
    attr_accessor :employee_ni_rebate

    # Employer National Insurance Gross Value
    attr_accessor :employer_ni_gross

    # Employer National Insurance Rebate Value
    attr_accessor :employer_ni_rebate

    # [readonly] Net Employee National Insurance
    attr_accessor :employee_ni

    # [readonly] Net Employer National Insurance
    attr_accessor :employer_ni

    # [readonly] Net National Insurance (Employer + Employee)
    attr_accessor :net_ni

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'earnings_upto_including_lel' => :'earningsUptoIncludingLEL',
        :'earnings_above_lel_upto_including_pt' => :'earningsAboveLELUptoIncludingPT',
        :'earnings_above_pt_upto_including_st' => :'earningsAbovePTUptoIncludingST',
        :'earnings_above_pt_upto_including_uel' => :'earningsAbovePTUptoIncludingUEL',
        :'earnings_above_st_upto_including_uel' => :'earningsAboveSTUptoIncludingUEL',
        :'earnings_above_uel' => :'earningsAboveUEL',
        :'employee_ni_gross' => :'employeeNiGross',
        :'employee_ni_rebate' => :'employeeNiRebate',
        :'employer_ni_gross' => :'employerNiGross',
        :'employer_ni_rebate' => :'employerNiRebate',
        :'employee_ni' => :'employeeNi',
        :'employer_ni' => :'employerNi',
        :'net_ni' => :'netNi'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'earnings_upto_including_lel' => :'Object',
        :'earnings_above_lel_upto_including_pt' => :'Object',
        :'earnings_above_pt_upto_including_st' => :'Object',
        :'earnings_above_pt_upto_including_uel' => :'Object',
        :'earnings_above_st_upto_including_uel' => :'Object',
        :'earnings_above_uel' => :'Object',
        :'employee_ni_gross' => :'Object',
        :'employee_ni_rebate' => :'Object',
        :'employer_ni_gross' => :'Object',
        :'employer_ni_rebate' => :'Object',
        :'employee_ni' => :'Object',
        :'employer_ni' => :'Object',
        :'net_ni' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `SwaggerClient::NationalInsuranceCalculation` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SwaggerClient::NationalInsuranceCalculation`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'earnings_upto_including_lel')
        self.earnings_upto_including_lel = attributes[:'earnings_upto_including_lel']
      end

      if attributes.key?(:'earnings_above_lel_upto_including_pt')
        self.earnings_above_lel_upto_including_pt = attributes[:'earnings_above_lel_upto_including_pt']
      end

      if attributes.key?(:'earnings_above_pt_upto_including_st')
        self.earnings_above_pt_upto_including_st = attributes[:'earnings_above_pt_upto_including_st']
      end

      if attributes.key?(:'earnings_above_pt_upto_including_uel')
        self.earnings_above_pt_upto_including_uel = attributes[:'earnings_above_pt_upto_including_uel']
      end

      if attributes.key?(:'earnings_above_st_upto_including_uel')
        self.earnings_above_st_upto_including_uel = attributes[:'earnings_above_st_upto_including_uel']
      end

      if attributes.key?(:'earnings_above_uel')
        self.earnings_above_uel = attributes[:'earnings_above_uel']
      end

      if attributes.key?(:'employee_ni_gross')
        self.employee_ni_gross = attributes[:'employee_ni_gross']
      end

      if attributes.key?(:'employee_ni_rebate')
        self.employee_ni_rebate = attributes[:'employee_ni_rebate']
      end

      if attributes.key?(:'employer_ni_gross')
        self.employer_ni_gross = attributes[:'employer_ni_gross']
      end

      if attributes.key?(:'employer_ni_rebate')
        self.employer_ni_rebate = attributes[:'employer_ni_rebate']
      end

      if attributes.key?(:'employee_ni')
        self.employee_ni = attributes[:'employee_ni']
      end

      if attributes.key?(:'employer_ni')
        self.employer_ni = attributes[:'employer_ni']
      end

      if attributes.key?(:'net_ni')
        self.net_ni = attributes[:'net_ni']
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
          earnings_upto_including_lel == o.earnings_upto_including_lel &&
          earnings_above_lel_upto_including_pt == o.earnings_above_lel_upto_including_pt &&
          earnings_above_pt_upto_including_st == o.earnings_above_pt_upto_including_st &&
          earnings_above_pt_upto_including_uel == o.earnings_above_pt_upto_including_uel &&
          earnings_above_st_upto_including_uel == o.earnings_above_st_upto_including_uel &&
          earnings_above_uel == o.earnings_above_uel &&
          employee_ni_gross == o.employee_ni_gross &&
          employee_ni_rebate == o.employee_ni_rebate &&
          employer_ni_gross == o.employer_ni_gross &&
          employer_ni_rebate == o.employer_ni_rebate &&
          employee_ni == o.employee_ni &&
          employer_ni == o.employer_ni &&
          net_ni == o.net_ni
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [earnings_upto_including_lel, earnings_above_lel_upto_including_pt, earnings_above_pt_upto_including_st, earnings_above_pt_upto_including_uel, earnings_above_st_upto_including_uel, earnings_above_uel, employee_ni_gross, employee_ni_rebate, employer_ni_gross, employer_ni_rebate, employee_ni, employer_ni, net_ni].hash
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
