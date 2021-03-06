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
  class UserDisplayPreferences
    attr_accessor :start_page

    attr_accessor :show_zeroes

    attr_accessor :show_tax_code_when_viewing_payrun_entry

    attr_accessor :allow_journal_resubmit

    attr_accessor :hide_salary_on_employee_index_page

    attr_accessor :enable_multi_employer_import

    attr_accessor :enable_covid19_features

    attr_accessor :hide_payslip_checkboxes

    attr_accessor :hide_payslip_search_and_sort

    attr_accessor :show_ytd_in_payslip_view

    attr_accessor :enable_dps_xml_upload

    attr_accessor :enable_rti_timestamp_override

    attr_accessor :cookie_preference

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'start_page' => :'startPage',
        :'show_zeroes' => :'showZeroes',
        :'show_tax_code_when_viewing_payrun_entry' => :'showTaxCodeWhenViewingPayrunEntry',
        :'allow_journal_resubmit' => :'allowJournalResubmit',
        :'hide_salary_on_employee_index_page' => :'hideSalaryOnEmployeeIndexPage',
        :'enable_multi_employer_import' => :'enableMultiEmployerImport',
        :'enable_covid19_features' => :'enableCovid19Features',
        :'hide_payslip_checkboxes' => :'hidePayslipCheckboxes',
        :'hide_payslip_search_and_sort' => :'hidePayslipSearchAndSort',
        :'show_ytd_in_payslip_view' => :'showYtdInPayslipView',
        :'enable_dps_xml_upload' => :'enableDpsXmlUpload',
        :'enable_rti_timestamp_override' => :'enableRtiTimestampOverride',
        :'cookie_preference' => :'cookiePreference'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'start_page' => :'Object',
        :'show_zeroes' => :'Object',
        :'show_tax_code_when_viewing_payrun_entry' => :'Object',
        :'allow_journal_resubmit' => :'Object',
        :'hide_salary_on_employee_index_page' => :'Object',
        :'enable_multi_employer_import' => :'Object',
        :'enable_covid19_features' => :'Object',
        :'hide_payslip_checkboxes' => :'Object',
        :'hide_payslip_search_and_sort' => :'Object',
        :'show_ytd_in_payslip_view' => :'Object',
        :'enable_dps_xml_upload' => :'Object',
        :'enable_rti_timestamp_override' => :'Object',
        :'cookie_preference' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `SwaggerClient::UserDisplayPreferences` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SwaggerClient::UserDisplayPreferences`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'start_page')
        self.start_page = attributes[:'start_page']
      end

      if attributes.key?(:'show_zeroes')
        self.show_zeroes = attributes[:'show_zeroes']
      end

      if attributes.key?(:'show_tax_code_when_viewing_payrun_entry')
        self.show_tax_code_when_viewing_payrun_entry = attributes[:'show_tax_code_when_viewing_payrun_entry']
      end

      if attributes.key?(:'allow_journal_resubmit')
        self.allow_journal_resubmit = attributes[:'allow_journal_resubmit']
      end

      if attributes.key?(:'hide_salary_on_employee_index_page')
        self.hide_salary_on_employee_index_page = attributes[:'hide_salary_on_employee_index_page']
      end

      if attributes.key?(:'enable_multi_employer_import')
        self.enable_multi_employer_import = attributes[:'enable_multi_employer_import']
      end

      if attributes.key?(:'enable_covid19_features')
        self.enable_covid19_features = attributes[:'enable_covid19_features']
      end

      if attributes.key?(:'hide_payslip_checkboxes')
        self.hide_payslip_checkboxes = attributes[:'hide_payslip_checkboxes']
      end

      if attributes.key?(:'hide_payslip_search_and_sort')
        self.hide_payslip_search_and_sort = attributes[:'hide_payslip_search_and_sort']
      end

      if attributes.key?(:'show_ytd_in_payslip_view')
        self.show_ytd_in_payslip_view = attributes[:'show_ytd_in_payslip_view']
      end

      if attributes.key?(:'enable_dps_xml_upload')
        self.enable_dps_xml_upload = attributes[:'enable_dps_xml_upload']
      end

      if attributes.key?(:'enable_rti_timestamp_override')
        self.enable_rti_timestamp_override = attributes[:'enable_rti_timestamp_override']
      end

      if attributes.key?(:'cookie_preference')
        self.cookie_preference = attributes[:'cookie_preference']
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
          start_page == o.start_page &&
          show_zeroes == o.show_zeroes &&
          show_tax_code_when_viewing_payrun_entry == o.show_tax_code_when_viewing_payrun_entry &&
          allow_journal_resubmit == o.allow_journal_resubmit &&
          hide_salary_on_employee_index_page == o.hide_salary_on_employee_index_page &&
          enable_multi_employer_import == o.enable_multi_employer_import &&
          enable_covid19_features == o.enable_covid19_features &&
          hide_payslip_checkboxes == o.hide_payslip_checkboxes &&
          hide_payslip_search_and_sort == o.hide_payslip_search_and_sort &&
          show_ytd_in_payslip_view == o.show_ytd_in_payslip_view &&
          enable_dps_xml_upload == o.enable_dps_xml_upload &&
          enable_rti_timestamp_override == o.enable_rti_timestamp_override &&
          cookie_preference == o.cookie_preference
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [start_page, show_zeroes, show_tax_code_when_viewing_payrun_entry, allow_journal_resubmit, hide_salary_on_employee_index_page, enable_multi_employer_import, enable_covid19_features, hide_payslip_checkboxes, hide_payslip_search_and_sort, show_ytd_in_payslip_view, enable_dps_xml_upload, enable_rti_timestamp_override, cookie_preference].hash
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
