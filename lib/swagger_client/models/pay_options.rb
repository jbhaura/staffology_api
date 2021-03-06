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
  # This object forms the basis of the Employees payment.
  class PayOptions
    attr_accessor :period

    # Indicates whether to use first, second, third (etc) PaySchedule for this PayPeriod.
    attr_accessor :ordinal

    # The amount the Employee is regularly paid each period
    attr_accessor :pay_amount

    attr_accessor :basis

    attr_accessor :national_minimum_wage

    # This property is irrelevant if the basis is Monthly.\\n  But if the basis is Daily or Hourly then this property sets how many days/hours the employee should be paid for in the period.
    attr_accessor :pay_amount_multiplier

    # This property is used to calculate values for PayCodes that are set as multiples of   the employees base hourly rate. Eg Overtime.\\n  If this is set as zero then we'll attempt to calculate a value based on the other fields
    attr_accessor :base_hourly_rate

    # Automatically reduce the PayAmount when the Employee has Leave that is either Not Paid or has Statutory Pay.\\n  Can only be set to True if the Basis is Monthly (ie, employee is not paid an hourly or daily rate).\\n  If set to false then you must manually reduce their payment to reflect any Leave
    attr_accessor :auto_adjust_for_leave

    attr_accessor :method

    # If you want the Employees pay to be allocated to a code other than BASIC, specify it here
    attr_accessor :pay_code

    # If you don't want negative PAYE values when the Gross pay is zero, set this to true
    attr_accessor :withhold_tax_refund_if_pay_is_zero

    attr_accessor :mileage_vehicle_type

    # The number of miles to pay for as Mileage Allowance Payments
    attr_accessor :maps_miles

    attr_accessor :tax_and_ni

    attr_accessor :fps_fields

    # These are used to make additions/deductions to the pay for this Employee.  You do not need to include Pension, Tax, NI,  Loan Repayments, etc as these will all be automatically created.
    attr_accessor :regular_pay_lines

    attr_accessor :tags

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'period' => :'period',
        :'ordinal' => :'ordinal',
        :'pay_amount' => :'payAmount',
        :'basis' => :'basis',
        :'national_minimum_wage' => :'nationalMinimumWage',
        :'pay_amount_multiplier' => :'payAmountMultiplier',
        :'base_hourly_rate' => :'baseHourlyRate',
        :'auto_adjust_for_leave' => :'autoAdjustForLeave',
        :'method' => :'method',
        :'pay_code' => :'payCode',
        :'withhold_tax_refund_if_pay_is_zero' => :'withholdTaxRefundIfPayIsZero',
        :'mileage_vehicle_type' => :'mileageVehicleType',
        :'maps_miles' => :'mapsMiles',
        :'tax_and_ni' => :'taxAndNi',
        :'fps_fields' => :'fpsFields',
        :'regular_pay_lines' => :'regularPayLines',
        :'tags' => :'tags'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'period' => :'Object',
        :'ordinal' => :'Object',
        :'pay_amount' => :'Object',
        :'basis' => :'Object',
        :'national_minimum_wage' => :'Object',
        :'pay_amount_multiplier' => :'Object',
        :'base_hourly_rate' => :'Object',
        :'auto_adjust_for_leave' => :'Object',
        :'method' => :'Object',
        :'pay_code' => :'Object',
        :'withhold_tax_refund_if_pay_is_zero' => :'Object',
        :'mileage_vehicle_type' => :'Object',
        :'maps_miles' => :'Object',
        :'tax_and_ni' => :'Object',
        :'fps_fields' => :'Object',
        :'regular_pay_lines' => :'Object',
        :'tags' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'pay_code',
        :'maps_miles',
        :'regular_pay_lines',
        :'tags'
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SwaggerClient::PayOptions` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SwaggerClient::PayOptions`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'period')
        self.period = attributes[:'period']
      end

      if attributes.key?(:'ordinal')
        self.ordinal = attributes[:'ordinal']
      end

      if attributes.key?(:'pay_amount')
        self.pay_amount = attributes[:'pay_amount']
      end

      if attributes.key?(:'basis')
        self.basis = attributes[:'basis']
      end

      if attributes.key?(:'national_minimum_wage')
        self.national_minimum_wage = attributes[:'national_minimum_wage']
      end

      if attributes.key?(:'pay_amount_multiplier')
        self.pay_amount_multiplier = attributes[:'pay_amount_multiplier']
      end

      if attributes.key?(:'base_hourly_rate')
        self.base_hourly_rate = attributes[:'base_hourly_rate']
      end

      if attributes.key?(:'auto_adjust_for_leave')
        self.auto_adjust_for_leave = attributes[:'auto_adjust_for_leave']
      end

      if attributes.key?(:'method')
        self.method = attributes[:'method']
      end

      if attributes.key?(:'pay_code')
        self.pay_code = attributes[:'pay_code']
      end

      if attributes.key?(:'withhold_tax_refund_if_pay_is_zero')
        self.withhold_tax_refund_if_pay_is_zero = attributes[:'withhold_tax_refund_if_pay_is_zero']
      end

      if attributes.key?(:'mileage_vehicle_type')
        self.mileage_vehicle_type = attributes[:'mileage_vehicle_type']
      end

      if attributes.key?(:'maps_miles')
        self.maps_miles = attributes[:'maps_miles']
      end

      if attributes.key?(:'tax_and_ni')
        self.tax_and_ni = attributes[:'tax_and_ni']
      end

      if attributes.key?(:'fps_fields')
        self.fps_fields = attributes[:'fps_fields']
      end

      if attributes.key?(:'regular_pay_lines')
        if (value = attributes[:'regular_pay_lines']).is_a?(Array)
          self.regular_pay_lines = value
        end
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
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
          period == o.period &&
          ordinal == o.ordinal &&
          pay_amount == o.pay_amount &&
          basis == o.basis &&
          national_minimum_wage == o.national_minimum_wage &&
          pay_amount_multiplier == o.pay_amount_multiplier &&
          base_hourly_rate == o.base_hourly_rate &&
          auto_adjust_for_leave == o.auto_adjust_for_leave &&
          method == o.method &&
          pay_code == o.pay_code &&
          withhold_tax_refund_if_pay_is_zero == o.withhold_tax_refund_if_pay_is_zero &&
          mileage_vehicle_type == o.mileage_vehicle_type &&
          maps_miles == o.maps_miles &&
          tax_and_ni == o.tax_and_ni &&
          fps_fields == o.fps_fields &&
          regular_pay_lines == o.regular_pay_lines &&
          tags == o.tags
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [period, ordinal, pay_amount, basis, national_minimum_wage, pay_amount_multiplier, base_hourly_rate, auto_adjust_for_leave, method, pay_code, withhold_tax_refund_if_pay_is_zero, mileage_vehicle_type, maps_miles, tax_and_ni, fps_fields, regular_pay_lines, tags].hash
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
