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
  class UmbrellaPayment
    # When importing multiple UmbrellaPayments this field is used to identify the employee
    attr_accessor :payroll_code

    # Override the settings for this employer by specifying a ChargePerTimeSheet.\\n  Or leave it as null to use the settings from the Employer
    attr_accessor :charge_per_timesheet

    attr_accessor :invoice_value

    attr_accessor :maps_miles

    attr_accessor :other_expenses

    attr_accessor :number_of_timesheets

    attr_accessor :hours_worked

    attr_accessor :gross_deduction

    attr_accessor :gross_addition

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'payroll_code' => :'payrollCode',
        :'charge_per_timesheet' => :'chargePerTimesheet',
        :'invoice_value' => :'invoiceValue',
        :'maps_miles' => :'mapsMiles',
        :'other_expenses' => :'otherExpenses',
        :'number_of_timesheets' => :'numberOfTimesheets',
        :'hours_worked' => :'hoursWorked',
        :'gross_deduction' => :'grossDeduction',
        :'gross_addition' => :'grossAddition'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'payroll_code' => :'Object',
        :'charge_per_timesheet' => :'Object',
        :'invoice_value' => :'Object',
        :'maps_miles' => :'Object',
        :'other_expenses' => :'Object',
        :'number_of_timesheets' => :'Object',
        :'hours_worked' => :'Object',
        :'gross_deduction' => :'Object',
        :'gross_addition' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'payroll_code',
        :'charge_per_timesheet',
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SwaggerClient::UmbrellaPayment` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SwaggerClient::UmbrellaPayment`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'payroll_code')
        self.payroll_code = attributes[:'payroll_code']
      end

      if attributes.key?(:'charge_per_timesheet')
        self.charge_per_timesheet = attributes[:'charge_per_timesheet']
      end

      if attributes.key?(:'invoice_value')
        self.invoice_value = attributes[:'invoice_value']
      end

      if attributes.key?(:'maps_miles')
        self.maps_miles = attributes[:'maps_miles']
      end

      if attributes.key?(:'other_expenses')
        self.other_expenses = attributes[:'other_expenses']
      end

      if attributes.key?(:'number_of_timesheets')
        self.number_of_timesheets = attributes[:'number_of_timesheets']
      end

      if attributes.key?(:'hours_worked')
        self.hours_worked = attributes[:'hours_worked']
      end

      if attributes.key?(:'gross_deduction')
        self.gross_deduction = attributes[:'gross_deduction']
      end

      if attributes.key?(:'gross_addition')
        self.gross_addition = attributes[:'gross_addition']
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
          payroll_code == o.payroll_code &&
          charge_per_timesheet == o.charge_per_timesheet &&
          invoice_value == o.invoice_value &&
          maps_miles == o.maps_miles &&
          other_expenses == o.other_expenses &&
          number_of_timesheets == o.number_of_timesheets &&
          hours_worked == o.hours_worked &&
          gross_deduction == o.gross_deduction &&
          gross_addition == o.gross_addition
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [payroll_code, charge_per_timesheet, invoice_value, maps_miles, other_expenses, number_of_timesheets, hours_worked, gross_deduction, gross_addition].hash
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
