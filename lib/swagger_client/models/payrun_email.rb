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
  # PayrunEmails are sent automatically when a payrun has been finalised
  class PayrunEmail
    # If false then this email won't be sent
    attr_accessor :is_active

    # Only used for reference, not included in the email
    attr_accessor :name

    attr_accessor :template_type

    # The address to which the email should be sent
    attr_accessor :recipient_address

    # If a value is provided, then all PDFs attached to the email will be encrypted using this password
    attr_accessor :pdf_password

    # If set to true then Payslips will be attached to the email
    attr_accessor :attach_payslips

    # If AttachPayslips is true and this property is also true then only payslips that haven't already been sent directly to employees will be attached.
    attr_accessor :payslips_unemailed

    # If AttachPayslips is true and this property is also true then the payslips will be attached as a single file rather than as separate PDFs,
    attr_accessor :payslips_single_file

    # If set to True then the PaymentSummary report will be attached to the Email
    attr_accessor :attach_payment_summary

    # If set to True then the P32 report will be attached to the email
    attr_accessor :attach_p32

    # If set to True then the P30 report will be attached to the email
    attr_accessor :attach_p30

    # If set to True then the GrossToNet report will be attached to the email
    attr_accessor :attach_gross_to_net

    # If set to True then the Pensions Contributions report will be attached to the email
    attr_accessor :attach_pension_contributions

    # If set to True then the Cost Analysis report will be attached to the email
    attr_accessor :attach_cost_analysis

    # If set to True then the Cost of Employment report will be attached to the email
    attr_accessor :attach_cost_of_employment

    # If set to True then the Full Summary Of Payment report will be attached to the email
    attr_accessor :attach_full_summary_of_pay

    # If set to True then the Bank Payments CSV file will be attached to the email
    attr_accessor :attach_bank_payments

    # If TemplateType is null then you can provide a subject line here to be used for the email
    attr_accessor :custom_subject

    # If TemplateType is null then you can provide the body text here to be used for the email
    attr_accessor :custom_body

    # If the CustomBody is in HTML format, set this to true.
    attr_accessor :custom_body_is_html

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'is_active' => :'isActive',
        :'name' => :'name',
        :'template_type' => :'templateType',
        :'recipient_address' => :'recipientAddress',
        :'pdf_password' => :'pdfPassword',
        :'attach_payslips' => :'attachPayslips',
        :'payslips_unemailed' => :'payslips_Unemailed',
        :'payslips_single_file' => :'payslips_SingleFile',
        :'attach_payment_summary' => :'attachPaymentSummary',
        :'attach_p32' => :'attachP32',
        :'attach_p30' => :'attachP30',
        :'attach_gross_to_net' => :'attachGrossToNet',
        :'attach_pension_contributions' => :'attachPensionContributions',
        :'attach_cost_analysis' => :'attachCostAnalysis',
        :'attach_cost_of_employment' => :'attachCostOfEmployment',
        :'attach_full_summary_of_pay' => :'attachFullSummaryOfPay',
        :'attach_bank_payments' => :'attachBankPayments',
        :'custom_subject' => :'customSubject',
        :'custom_body' => :'customBody',
        :'custom_body_is_html' => :'customBody_IsHtml'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'is_active' => :'Object',
        :'name' => :'Object',
        :'template_type' => :'Object',
        :'recipient_address' => :'Object',
        :'pdf_password' => :'Object',
        :'attach_payslips' => :'Object',
        :'payslips_unemailed' => :'Object',
        :'payslips_single_file' => :'Object',
        :'attach_payment_summary' => :'Object',
        :'attach_p32' => :'Object',
        :'attach_p30' => :'Object',
        :'attach_gross_to_net' => :'Object',
        :'attach_pension_contributions' => :'Object',
        :'attach_cost_analysis' => :'Object',
        :'attach_cost_of_employment' => :'Object',
        :'attach_full_summary_of_pay' => :'Object',
        :'attach_bank_payments' => :'Object',
        :'custom_subject' => :'Object',
        :'custom_body' => :'Object',
        :'custom_body_is_html' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'pdf_password',
        :'custom_subject',
        :'custom_body',
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SwaggerClient::PayrunEmail` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SwaggerClient::PayrunEmail`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'is_active')
        self.is_active = attributes[:'is_active']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'template_type')
        self.template_type = attributes[:'template_type']
      end

      if attributes.key?(:'recipient_address')
        self.recipient_address = attributes[:'recipient_address']
      end

      if attributes.key?(:'pdf_password')
        self.pdf_password = attributes[:'pdf_password']
      end

      if attributes.key?(:'attach_payslips')
        self.attach_payslips = attributes[:'attach_payslips']
      end

      if attributes.key?(:'payslips_unemailed')
        self.payslips_unemailed = attributes[:'payslips_unemailed']
      end

      if attributes.key?(:'payslips_single_file')
        self.payslips_single_file = attributes[:'payslips_single_file']
      end

      if attributes.key?(:'attach_payment_summary')
        self.attach_payment_summary = attributes[:'attach_payment_summary']
      end

      if attributes.key?(:'attach_p32')
        self.attach_p32 = attributes[:'attach_p32']
      end

      if attributes.key?(:'attach_p30')
        self.attach_p30 = attributes[:'attach_p30']
      end

      if attributes.key?(:'attach_gross_to_net')
        self.attach_gross_to_net = attributes[:'attach_gross_to_net']
      end

      if attributes.key?(:'attach_pension_contributions')
        self.attach_pension_contributions = attributes[:'attach_pension_contributions']
      end

      if attributes.key?(:'attach_cost_analysis')
        self.attach_cost_analysis = attributes[:'attach_cost_analysis']
      end

      if attributes.key?(:'attach_cost_of_employment')
        self.attach_cost_of_employment = attributes[:'attach_cost_of_employment']
      end

      if attributes.key?(:'attach_full_summary_of_pay')
        self.attach_full_summary_of_pay = attributes[:'attach_full_summary_of_pay']
      end

      if attributes.key?(:'attach_bank_payments')
        self.attach_bank_payments = attributes[:'attach_bank_payments']
      end

      if attributes.key?(:'custom_subject')
        self.custom_subject = attributes[:'custom_subject']
      end

      if attributes.key?(:'custom_body')
        self.custom_body = attributes[:'custom_body']
      end

      if attributes.key?(:'custom_body_is_html')
        self.custom_body_is_html = attributes[:'custom_body_is_html']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @recipient_address.nil?
        invalid_properties.push('invalid value for "recipient_address", recipient_address cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @recipient_address.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          is_active == o.is_active &&
          name == o.name &&
          template_type == o.template_type &&
          recipient_address == o.recipient_address &&
          pdf_password == o.pdf_password &&
          attach_payslips == o.attach_payslips &&
          payslips_unemailed == o.payslips_unemailed &&
          payslips_single_file == o.payslips_single_file &&
          attach_payment_summary == o.attach_payment_summary &&
          attach_p32 == o.attach_p32 &&
          attach_p30 == o.attach_p30 &&
          attach_gross_to_net == o.attach_gross_to_net &&
          attach_pension_contributions == o.attach_pension_contributions &&
          attach_cost_analysis == o.attach_cost_analysis &&
          attach_cost_of_employment == o.attach_cost_of_employment &&
          attach_full_summary_of_pay == o.attach_full_summary_of_pay &&
          attach_bank_payments == o.attach_bank_payments &&
          custom_subject == o.custom_subject &&
          custom_body == o.custom_body &&
          custom_body_is_html == o.custom_body_is_html
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [is_active, name, template_type, recipient_address, pdf_password, attach_payslips, payslips_unemailed, payslips_single_file, attach_payment_summary, attach_p32, attach_p30, attach_gross_to_net, attach_pension_contributions, attach_cost_analysis, attach_cost_of_employment, attach_full_summary_of_pay, attach_bank_payments, custom_subject, custom_body, custom_body_is_html].hash
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
