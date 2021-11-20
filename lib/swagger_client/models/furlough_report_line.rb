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
  class FurloughReportLine
    attr_accessor :employee

    attr_accessor :employees_full_name

    attr_accessor :employees_nino

    attr_accessor :employees_payroll_reference_number

    attr_accessor :furloughed_days

    attr_accessor :days_in_period

    attr_accessor :hours_normally_worked

    attr_accessor :hours_furloughed

    attr_accessor :percentage_of_furloughed_days_worked

    attr_accessor :gross_pay

    attr_accessor :gross_pay_claim

    attr_accessor :ni_claim

    attr_accessor :pension_claim

    attr_accessor :total_claim

    attr_accessor :furlough_start

    attr_accessor :furlough_end

    attr_accessor :department

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'employee' => :'employee',
        :'employees_full_name' => :'employeesFullName',
        :'employees_nino' => :'employeesNINO',
        :'employees_payroll_reference_number' => :'employeesPayrollReferenceNumber',
        :'furloughed_days' => :'furloughedDays',
        :'days_in_period' => :'daysInPeriod',
        :'hours_normally_worked' => :'hoursNormallyWorked',
        :'hours_furloughed' => :'hoursFurloughed',
        :'percentage_of_furloughed_days_worked' => :'percentageOfFurloughedDaysWorked',
        :'gross_pay' => :'grossPay',
        :'gross_pay_claim' => :'grossPayClaim',
        :'ni_claim' => :'niClaim',
        :'pension_claim' => :'pensionClaim',
        :'total_claim' => :'totalClaim',
        :'furlough_start' => :'furloughStart',
        :'furlough_end' => :'furloughEnd',
        :'department' => :'department'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'employee' => :'Object',
        :'employees_full_name' => :'Object',
        :'employees_nino' => :'Object',
        :'employees_payroll_reference_number' => :'Object',
        :'furloughed_days' => :'Object',
        :'days_in_period' => :'Object',
        :'hours_normally_worked' => :'Object',
        :'hours_furloughed' => :'Object',
        :'percentage_of_furloughed_days_worked' => :'Object',
        :'gross_pay' => :'Object',
        :'gross_pay_claim' => :'Object',
        :'ni_claim' => :'Object',
        :'pension_claim' => :'Object',
        :'total_claim' => :'Object',
        :'furlough_start' => :'Object',
        :'furlough_end' => :'Object',
        :'department' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'employees_full_name',
        :'employees_nino',
        :'employees_payroll_reference_number',
        :'hours_normally_worked',
        :'hours_furloughed',
        :'furlough_start',
        :'furlough_end',
        :'department'
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SwaggerClient::FurloughReportLine` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SwaggerClient::FurloughReportLine`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'employee')
        self.employee = attributes[:'employee']
      end

      if attributes.key?(:'employees_full_name')
        self.employees_full_name = attributes[:'employees_full_name']
      end

      if attributes.key?(:'employees_nino')
        self.employees_nino = attributes[:'employees_nino']
      end

      if attributes.key?(:'employees_payroll_reference_number')
        self.employees_payroll_reference_number = attributes[:'employees_payroll_reference_number']
      end

      if attributes.key?(:'furloughed_days')
        self.furloughed_days = attributes[:'furloughed_days']
      end

      if attributes.key?(:'days_in_period')
        self.days_in_period = attributes[:'days_in_period']
      end

      if attributes.key?(:'hours_normally_worked')
        self.hours_normally_worked = attributes[:'hours_normally_worked']
      end

      if attributes.key?(:'hours_furloughed')
        self.hours_furloughed = attributes[:'hours_furloughed']
      end

      if attributes.key?(:'percentage_of_furloughed_days_worked')
        self.percentage_of_furloughed_days_worked = attributes[:'percentage_of_furloughed_days_worked']
      end

      if attributes.key?(:'gross_pay')
        self.gross_pay = attributes[:'gross_pay']
      end

      if attributes.key?(:'gross_pay_claim')
        self.gross_pay_claim = attributes[:'gross_pay_claim']
      end

      if attributes.key?(:'ni_claim')
        self.ni_claim = attributes[:'ni_claim']
      end

      if attributes.key?(:'pension_claim')
        self.pension_claim = attributes[:'pension_claim']
      end

      if attributes.key?(:'total_claim')
        self.total_claim = attributes[:'total_claim']
      end

      if attributes.key?(:'furlough_start')
        self.furlough_start = attributes[:'furlough_start']
      end

      if attributes.key?(:'furlough_end')
        self.furlough_end = attributes[:'furlough_end']
      end

      if attributes.key?(:'department')
        self.department = attributes[:'department']
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
          employee == o.employee &&
          employees_full_name == o.employees_full_name &&
          employees_nino == o.employees_nino &&
          employees_payroll_reference_number == o.employees_payroll_reference_number &&
          furloughed_days == o.furloughed_days &&
          days_in_period == o.days_in_period &&
          hours_normally_worked == o.hours_normally_worked &&
          hours_furloughed == o.hours_furloughed &&
          percentage_of_furloughed_days_worked == o.percentage_of_furloughed_days_worked &&
          gross_pay == o.gross_pay &&
          gross_pay_claim == o.gross_pay_claim &&
          ni_claim == o.ni_claim &&
          pension_claim == o.pension_claim &&
          total_claim == o.total_claim &&
          furlough_start == o.furlough_start &&
          furlough_end == o.furlough_end &&
          department == o.department
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [employee, employees_full_name, employees_nino, employees_payroll_reference_number, furloughed_days, days_in_period, hours_normally_worked, hours_furloughed, percentage_of_furloughed_days_worked, gross_pay, gross_pay_claim, ni_claim, pension_claim, total_claim, furlough_start, furlough_end, department].hash
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