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
  class FpsEmployeeFigsToDate
    attr_accessor :taxable_pay

    attr_accessor :total_tax

    attr_accessor :student_loans_td

    attr_accessor :postgrad_loans_td

    attr_accessor :benefits_taxed_via_payroll_ytd

    attr_accessor :empee_pen_contribns_paid_ytd

    attr_accessor :empee_pen_contribns_not_paid_ytd

    attr_accessor :smpytd

    attr_accessor :sppytd

    attr_accessor :sapytd

    attr_accessor :shppytd

    attr_accessor :spbpytd

    attr_accessor :sspytd

    attr_accessor :gross

    attr_accessor :net_pay

    attr_accessor :additions

    attr_accessor :deductions

    attr_accessor :take_home_pay

    attr_accessor :adjustments

    attr_accessor :maps_miles

    attr_accessor :pensionable_earnings

    attr_accessor :pensionable_pay

    attr_accessor :employer_pension_contribution

    attr_accessor :employee_pension_contribution

    attr_accessor :employee_pension_contribution_avc

    attr_accessor :payment_after_leaving

    attr_accessor :tax_on_payment_after_leaving

    attr_accessor :taxable_pay_previous_employment

    attr_accessor :total_tax_previous_employment

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'taxable_pay' => :'taxablePay',
        :'total_tax' => :'totalTax',
        :'student_loans_td' => :'studentLoansTD',
        :'postgrad_loans_td' => :'postgradLoansTD',
        :'benefits_taxed_via_payroll_ytd' => :'benefitsTaxedViaPayrollYTD',
        :'empee_pen_contribns_paid_ytd' => :'empeePenContribnsPaidYTD',
        :'empee_pen_contribns_not_paid_ytd' => :'empeePenContribnsNotPaidYTD',
        :'smpytd' => :'smpytd',
        :'sppytd' => :'sppytd',
        :'sapytd' => :'sapytd',
        :'shppytd' => :'shppytd',
        :'spbpytd' => :'spbpytd',
        :'sspytd' => :'sspytd',
        :'gross' => :'gross',
        :'net_pay' => :'netPay',
        :'additions' => :'additions',
        :'deductions' => :'deductions',
        :'take_home_pay' => :'takeHomePay',
        :'adjustments' => :'adjustments',
        :'maps_miles' => :'mapsMiles',
        :'pensionable_earnings' => :'pensionableEarnings',
        :'pensionable_pay' => :'pensionablePay',
        :'employer_pension_contribution' => :'employerPensionContribution',
        :'employee_pension_contribution' => :'employeePensionContribution',
        :'employee_pension_contribution_avc' => :'employeePensionContributionAvc',
        :'payment_after_leaving' => :'paymentAfterLeaving',
        :'tax_on_payment_after_leaving' => :'taxOnPaymentAfterLeaving',
        :'taxable_pay_previous_employment' => :'taxablePayPreviousEmployment',
        :'total_tax_previous_employment' => :'totalTaxPreviousEmployment'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'taxable_pay' => :'Object',
        :'total_tax' => :'Object',
        :'student_loans_td' => :'Object',
        :'postgrad_loans_td' => :'Object',
        :'benefits_taxed_via_payroll_ytd' => :'Object',
        :'empee_pen_contribns_paid_ytd' => :'Object',
        :'empee_pen_contribns_not_paid_ytd' => :'Object',
        :'smpytd' => :'Object',
        :'sppytd' => :'Object',
        :'sapytd' => :'Object',
        :'shppytd' => :'Object',
        :'spbpytd' => :'Object',
        :'sspytd' => :'Object',
        :'gross' => :'Object',
        :'net_pay' => :'Object',
        :'additions' => :'Object',
        :'deductions' => :'Object',
        :'take_home_pay' => :'Object',
        :'adjustments' => :'Object',
        :'maps_miles' => :'Object',
        :'pensionable_earnings' => :'Object',
        :'pensionable_pay' => :'Object',
        :'employer_pension_contribution' => :'Object',
        :'employee_pension_contribution' => :'Object',
        :'employee_pension_contribution_avc' => :'Object',
        :'payment_after_leaving' => :'Object',
        :'tax_on_payment_after_leaving' => :'Object',
        :'taxable_pay_previous_employment' => :'Object',
        :'total_tax_previous_employment' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'taxable_pay',
        :'total_tax',
        :'student_loans_td',
        :'postgrad_loans_td',
        :'benefits_taxed_via_payroll_ytd',
        :'empee_pen_contribns_paid_ytd',
        :'empee_pen_contribns_not_paid_ytd',
        :'smpytd',
        :'sppytd',
        :'sapytd',
        :'shppytd',
        :'spbpytd',
        :'sspytd',
        :'gross',
        :'net_pay',
        :'additions',
        :'deductions',
        :'take_home_pay',
        :'adjustments',
        :'maps_miles',
        :'pensionable_earnings',
        :'pensionable_pay',
        :'employer_pension_contribution',
        :'employee_pension_contribution',
        :'employee_pension_contribution_avc',
        :'payment_after_leaving',
        :'tax_on_payment_after_leaving',
        :'taxable_pay_previous_employment',
        :'total_tax_previous_employment'
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SwaggerClient::FpsEmployeeFigsToDate` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SwaggerClient::FpsEmployeeFigsToDate`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'taxable_pay')
        self.taxable_pay = attributes[:'taxable_pay']
      end

      if attributes.key?(:'total_tax')
        self.total_tax = attributes[:'total_tax']
      end

      if attributes.key?(:'student_loans_td')
        self.student_loans_td = attributes[:'student_loans_td']
      end

      if attributes.key?(:'postgrad_loans_td')
        self.postgrad_loans_td = attributes[:'postgrad_loans_td']
      end

      if attributes.key?(:'benefits_taxed_via_payroll_ytd')
        self.benefits_taxed_via_payroll_ytd = attributes[:'benefits_taxed_via_payroll_ytd']
      end

      if attributes.key?(:'empee_pen_contribns_paid_ytd')
        self.empee_pen_contribns_paid_ytd = attributes[:'empee_pen_contribns_paid_ytd']
      end

      if attributes.key?(:'empee_pen_contribns_not_paid_ytd')
        self.empee_pen_contribns_not_paid_ytd = attributes[:'empee_pen_contribns_not_paid_ytd']
      end

      if attributes.key?(:'smpytd')
        self.smpytd = attributes[:'smpytd']
      end

      if attributes.key?(:'sppytd')
        self.sppytd = attributes[:'sppytd']
      end

      if attributes.key?(:'sapytd')
        self.sapytd = attributes[:'sapytd']
      end

      if attributes.key?(:'shppytd')
        self.shppytd = attributes[:'shppytd']
      end

      if attributes.key?(:'spbpytd')
        self.spbpytd = attributes[:'spbpytd']
      end

      if attributes.key?(:'sspytd')
        self.sspytd = attributes[:'sspytd']
      end

      if attributes.key?(:'gross')
        self.gross = attributes[:'gross']
      end

      if attributes.key?(:'net_pay')
        self.net_pay = attributes[:'net_pay']
      end

      if attributes.key?(:'additions')
        self.additions = attributes[:'additions']
      end

      if attributes.key?(:'deductions')
        self.deductions = attributes[:'deductions']
      end

      if attributes.key?(:'take_home_pay')
        self.take_home_pay = attributes[:'take_home_pay']
      end

      if attributes.key?(:'adjustments')
        self.adjustments = attributes[:'adjustments']
      end

      if attributes.key?(:'maps_miles')
        self.maps_miles = attributes[:'maps_miles']
      end

      if attributes.key?(:'pensionable_earnings')
        self.pensionable_earnings = attributes[:'pensionable_earnings']
      end

      if attributes.key?(:'pensionable_pay')
        self.pensionable_pay = attributes[:'pensionable_pay']
      end

      if attributes.key?(:'employer_pension_contribution')
        self.employer_pension_contribution = attributes[:'employer_pension_contribution']
      end

      if attributes.key?(:'employee_pension_contribution')
        self.employee_pension_contribution = attributes[:'employee_pension_contribution']
      end

      if attributes.key?(:'employee_pension_contribution_avc')
        self.employee_pension_contribution_avc = attributes[:'employee_pension_contribution_avc']
      end

      if attributes.key?(:'payment_after_leaving')
        self.payment_after_leaving = attributes[:'payment_after_leaving']
      end

      if attributes.key?(:'tax_on_payment_after_leaving')
        self.tax_on_payment_after_leaving = attributes[:'tax_on_payment_after_leaving']
      end

      if attributes.key?(:'taxable_pay_previous_employment')
        self.taxable_pay_previous_employment = attributes[:'taxable_pay_previous_employment']
      end

      if attributes.key?(:'total_tax_previous_employment')
        self.total_tax_previous_employment = attributes[:'total_tax_previous_employment']
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
          taxable_pay == o.taxable_pay &&
          total_tax == o.total_tax &&
          student_loans_td == o.student_loans_td &&
          postgrad_loans_td == o.postgrad_loans_td &&
          benefits_taxed_via_payroll_ytd == o.benefits_taxed_via_payroll_ytd &&
          empee_pen_contribns_paid_ytd == o.empee_pen_contribns_paid_ytd &&
          empee_pen_contribns_not_paid_ytd == o.empee_pen_contribns_not_paid_ytd &&
          smpytd == o.smpytd &&
          sppytd == o.sppytd &&
          sapytd == o.sapytd &&
          shppytd == o.shppytd &&
          spbpytd == o.spbpytd &&
          sspytd == o.sspytd &&
          gross == o.gross &&
          net_pay == o.net_pay &&
          additions == o.additions &&
          deductions == o.deductions &&
          take_home_pay == o.take_home_pay &&
          adjustments == o.adjustments &&
          maps_miles == o.maps_miles &&
          pensionable_earnings == o.pensionable_earnings &&
          pensionable_pay == o.pensionable_pay &&
          employer_pension_contribution == o.employer_pension_contribution &&
          employee_pension_contribution == o.employee_pension_contribution &&
          employee_pension_contribution_avc == o.employee_pension_contribution_avc &&
          payment_after_leaving == o.payment_after_leaving &&
          tax_on_payment_after_leaving == o.tax_on_payment_after_leaving &&
          taxable_pay_previous_employment == o.taxable_pay_previous_employment &&
          total_tax_previous_employment == o.total_tax_previous_employment
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [taxable_pay, total_tax, student_loans_td, postgrad_loans_td, benefits_taxed_via_payroll_ytd, empee_pen_contribns_paid_ytd, empee_pen_contribns_not_paid_ytd, smpytd, sppytd, sapytd, shppytd, spbpytd, sspytd, gross, net_pay, additions, deductions, take_home_pay, adjustments, maps_miles, pensionable_earnings, pensionable_pay, employer_pension_contribution, employee_pension_contribution, employee_pension_contribution_avc, payment_after_leaving, tax_on_payment_after_leaving, taxable_pay_previous_employment, total_tax_previous_employment].hash
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
