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
  class FpsEmployeePayment
    attr_accessor :bacs_hash_code

    attr_accessor :pay_freq

    attr_accessor :pmt_date

    attr_accessor :late_reason

    attr_accessor :week_no

    attr_accessor :month_no

    attr_accessor :periods_covered

    attr_accessor :aggregated_earnings

    attr_accessor :pmt_after_leaving

    attr_accessor :hours_worked

    attr_accessor :tax_code

    attr_accessor :taxable_pay

    attr_accessor :non_tax_or_nic_pmt

    attr_accessor :dedns_from_net_pay

    attr_accessor :pay_after_stat_dedns

    attr_accessor :benefits_taxed_via_payroll

    attr_accessor :class1_ani_cs_ytd

    attr_accessor :benefits

    attr_accessor :empee_pen_contribns_paid

    attr_accessor :items_subject_to_class1_nic

    attr_accessor :empee_pen_contribns_not_paid

    attr_accessor :student_loan_recovered

    attr_accessor :postgrad_loan_recovered

    attr_accessor :tax_deducted_or_refunded

    attr_accessor :on_strike

    attr_accessor :unpaid_absence

    attr_accessor :smpytd

    attr_accessor :sppytd

    attr_accessor :sapytd

    attr_accessor :sh_ppytd

    attr_accessor :spbpytd

    attr_accessor :trivial_commutation_payment

    attr_accessor :flexible_drawdown

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'bacs_hash_code' => :'bacsHashCode',
        :'pay_freq' => :'payFreq',
        :'pmt_date' => :'pmtDate',
        :'late_reason' => :'lateReason',
        :'week_no' => :'weekNo',
        :'month_no' => :'monthNo',
        :'periods_covered' => :'periodsCovered',
        :'aggregated_earnings' => :'aggregatedEarnings',
        :'pmt_after_leaving' => :'pmtAfterLeaving',
        :'hours_worked' => :'hoursWorked',
        :'tax_code' => :'taxCode',
        :'taxable_pay' => :'taxablePay',
        :'non_tax_or_nic_pmt' => :'nonTaxOrNICPmt',
        :'dedns_from_net_pay' => :'dednsFromNetPay',
        :'pay_after_stat_dedns' => :'payAfterStatDedns',
        :'benefits_taxed_via_payroll' => :'benefitsTaxedViaPayroll',
        :'class1_ani_cs_ytd' => :'class1ANICsYTD',
        :'benefits' => :'benefits',
        :'empee_pen_contribns_paid' => :'empeePenContribnsPaid',
        :'items_subject_to_class1_nic' => :'itemsSubjectToClass1NIC',
        :'empee_pen_contribns_not_paid' => :'empeePenContribnsNotPaid',
        :'student_loan_recovered' => :'studentLoanRecovered',
        :'postgrad_loan_recovered' => :'postgradLoanRecovered',
        :'tax_deducted_or_refunded' => :'taxDeductedOrRefunded',
        :'on_strike' => :'onStrike',
        :'unpaid_absence' => :'unpaidAbsence',
        :'smpytd' => :'smpytd',
        :'sppytd' => :'sppytd',
        :'sapytd' => :'sapytd',
        :'sh_ppytd' => :'shPPYTD',
        :'spbpytd' => :'spbpytd',
        :'trivial_commutation_payment' => :'trivialCommutationPayment',
        :'flexible_drawdown' => :'flexibleDrawdown'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'bacs_hash_code' => :'Object',
        :'pay_freq' => :'Object',
        :'pmt_date' => :'Object',
        :'late_reason' => :'Object',
        :'week_no' => :'Object',
        :'month_no' => :'Object',
        :'periods_covered' => :'Object',
        :'aggregated_earnings' => :'Object',
        :'pmt_after_leaving' => :'Object',
        :'hours_worked' => :'Object',
        :'tax_code' => :'Object',
        :'taxable_pay' => :'Object',
        :'non_tax_or_nic_pmt' => :'Object',
        :'dedns_from_net_pay' => :'Object',
        :'pay_after_stat_dedns' => :'Object',
        :'benefits_taxed_via_payroll' => :'Object',
        :'class1_ani_cs_ytd' => :'Object',
        :'benefits' => :'Object',
        :'empee_pen_contribns_paid' => :'Object',
        :'items_subject_to_class1_nic' => :'Object',
        :'empee_pen_contribns_not_paid' => :'Object',
        :'student_loan_recovered' => :'Object',
        :'postgrad_loan_recovered' => :'Object',
        :'tax_deducted_or_refunded' => :'Object',
        :'on_strike' => :'Object',
        :'unpaid_absence' => :'Object',
        :'smpytd' => :'Object',
        :'sppytd' => :'Object',
        :'sapytd' => :'Object',
        :'sh_ppytd' => :'Object',
        :'spbpytd' => :'Object',
        :'trivial_commutation_payment' => :'Object',
        :'flexible_drawdown' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'bacs_hash_code',
        :'pay_freq',
        :'pmt_date',
        :'late_reason',
        :'week_no',
        :'month_no',
        :'aggregated_earnings',
        :'pmt_after_leaving',
        :'hours_worked',
        :'taxable_pay',
        :'non_tax_or_nic_pmt',
        :'dedns_from_net_pay',
        :'pay_after_stat_dedns',
        :'benefits_taxed_via_payroll',
        :'class1_ani_cs_ytd',
        :'empee_pen_contribns_paid',
        :'items_subject_to_class1_nic',
        :'empee_pen_contribns_not_paid',
        :'postgrad_loan_recovered',
        :'tax_deducted_or_refunded',
        :'on_strike',
        :'unpaid_absence',
        :'smpytd',
        :'sppytd',
        :'sapytd',
        :'sh_ppytd',
        :'spbpytd',
        :'trivial_commutation_payment',
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SwaggerClient::FpsEmployeePayment` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SwaggerClient::FpsEmployeePayment`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'bacs_hash_code')
        self.bacs_hash_code = attributes[:'bacs_hash_code']
      end

      if attributes.key?(:'pay_freq')
        self.pay_freq = attributes[:'pay_freq']
      end

      if attributes.key?(:'pmt_date')
        self.pmt_date = attributes[:'pmt_date']
      end

      if attributes.key?(:'late_reason')
        self.late_reason = attributes[:'late_reason']
      end

      if attributes.key?(:'week_no')
        self.week_no = attributes[:'week_no']
      end

      if attributes.key?(:'month_no')
        self.month_no = attributes[:'month_no']
      end

      if attributes.key?(:'periods_covered')
        self.periods_covered = attributes[:'periods_covered']
      end

      if attributes.key?(:'aggregated_earnings')
        self.aggregated_earnings = attributes[:'aggregated_earnings']
      end

      if attributes.key?(:'pmt_after_leaving')
        self.pmt_after_leaving = attributes[:'pmt_after_leaving']
      end

      if attributes.key?(:'hours_worked')
        self.hours_worked = attributes[:'hours_worked']
      end

      if attributes.key?(:'tax_code')
        self.tax_code = attributes[:'tax_code']
      end

      if attributes.key?(:'taxable_pay')
        self.taxable_pay = attributes[:'taxable_pay']
      end

      if attributes.key?(:'non_tax_or_nic_pmt')
        self.non_tax_or_nic_pmt = attributes[:'non_tax_or_nic_pmt']
      end

      if attributes.key?(:'dedns_from_net_pay')
        self.dedns_from_net_pay = attributes[:'dedns_from_net_pay']
      end

      if attributes.key?(:'pay_after_stat_dedns')
        self.pay_after_stat_dedns = attributes[:'pay_after_stat_dedns']
      end

      if attributes.key?(:'benefits_taxed_via_payroll')
        self.benefits_taxed_via_payroll = attributes[:'benefits_taxed_via_payroll']
      end

      if attributes.key?(:'class1_ani_cs_ytd')
        self.class1_ani_cs_ytd = attributes[:'class1_ani_cs_ytd']
      end

      if attributes.key?(:'benefits')
        self.benefits = attributes[:'benefits']
      end

      if attributes.key?(:'empee_pen_contribns_paid')
        self.empee_pen_contribns_paid = attributes[:'empee_pen_contribns_paid']
      end

      if attributes.key?(:'items_subject_to_class1_nic')
        self.items_subject_to_class1_nic = attributes[:'items_subject_to_class1_nic']
      end

      if attributes.key?(:'empee_pen_contribns_not_paid')
        self.empee_pen_contribns_not_paid = attributes[:'empee_pen_contribns_not_paid']
      end

      if attributes.key?(:'student_loan_recovered')
        self.student_loan_recovered = attributes[:'student_loan_recovered']
      end

      if attributes.key?(:'postgrad_loan_recovered')
        self.postgrad_loan_recovered = attributes[:'postgrad_loan_recovered']
      end

      if attributes.key?(:'tax_deducted_or_refunded')
        self.tax_deducted_or_refunded = attributes[:'tax_deducted_or_refunded']
      end

      if attributes.key?(:'on_strike')
        self.on_strike = attributes[:'on_strike']
      end

      if attributes.key?(:'unpaid_absence')
        self.unpaid_absence = attributes[:'unpaid_absence']
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

      if attributes.key?(:'sh_ppytd')
        self.sh_ppytd = attributes[:'sh_ppytd']
      end

      if attributes.key?(:'spbpytd')
        self.spbpytd = attributes[:'spbpytd']
      end

      if attributes.key?(:'trivial_commutation_payment')
        if (value = attributes[:'trivial_commutation_payment']).is_a?(Array)
          self.trivial_commutation_payment = value
        end
      end

      if attributes.key?(:'flexible_drawdown')
        self.flexible_drawdown = attributes[:'flexible_drawdown']
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
          bacs_hash_code == o.bacs_hash_code &&
          pay_freq == o.pay_freq &&
          pmt_date == o.pmt_date &&
          late_reason == o.late_reason &&
          week_no == o.week_no &&
          month_no == o.month_no &&
          periods_covered == o.periods_covered &&
          aggregated_earnings == o.aggregated_earnings &&
          pmt_after_leaving == o.pmt_after_leaving &&
          hours_worked == o.hours_worked &&
          tax_code == o.tax_code &&
          taxable_pay == o.taxable_pay &&
          non_tax_or_nic_pmt == o.non_tax_or_nic_pmt &&
          dedns_from_net_pay == o.dedns_from_net_pay &&
          pay_after_stat_dedns == o.pay_after_stat_dedns &&
          benefits_taxed_via_payroll == o.benefits_taxed_via_payroll &&
          class1_ani_cs_ytd == o.class1_ani_cs_ytd &&
          benefits == o.benefits &&
          empee_pen_contribns_paid == o.empee_pen_contribns_paid &&
          items_subject_to_class1_nic == o.items_subject_to_class1_nic &&
          empee_pen_contribns_not_paid == o.empee_pen_contribns_not_paid &&
          student_loan_recovered == o.student_loan_recovered &&
          postgrad_loan_recovered == o.postgrad_loan_recovered &&
          tax_deducted_or_refunded == o.tax_deducted_or_refunded &&
          on_strike == o.on_strike &&
          unpaid_absence == o.unpaid_absence &&
          smpytd == o.smpytd &&
          sppytd == o.sppytd &&
          sapytd == o.sapytd &&
          sh_ppytd == o.sh_ppytd &&
          spbpytd == o.spbpytd &&
          trivial_commutation_payment == o.trivial_commutation_payment &&
          flexible_drawdown == o.flexible_drawdown
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [bacs_hash_code, pay_freq, pmt_date, late_reason, week_no, month_no, periods_covered, aggregated_earnings, pmt_after_leaving, hours_worked, tax_code, taxable_pay, non_tax_or_nic_pmt, dedns_from_net_pay, pay_after_stat_dedns, benefits_taxed_via_payroll, class1_ani_cs_ytd, benefits, empee_pen_contribns_paid, items_subject_to_class1_nic, empee_pen_contribns_not_paid, student_loan_recovered, postgrad_loan_recovered, tax_deducted_or_refunded, on_strike, unpaid_absence, smpytd, sppytd, sapytd, sh_ppytd, spbpytd, trivial_commutation_payment, flexible_drawdown].hash
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