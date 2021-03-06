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
  class PensionProvider
    attr_accessor :name

    attr_accessor :account_no

    attr_accessor :portal

    attr_accessor :website

    attr_accessor :address

    attr_accessor :telephone

    attr_accessor :papdis_version

    attr_accessor :papdis_provider_id

    attr_accessor :papdis_employer_id

    attr_accessor :csv_format

    # If we're sending contributions to an external provider then we'll include all employees that were on the payrun.  If you want to exclude employees that don't have any contributions to report then set this to true.
    attr_accessor :exclude_nil_paid_from_contributions

    # If you need to adjust the reported dates of the contributions then you can do so by setting a non-zero value here.  A negative value of will move the date back in time.
    attr_accessor :pay_period_date_adjustment

    # This field has different uses dependent on the ExternalDataProvider, if any.\\n  For Nest, it indicates whether or not contributions are reported as \"Tax Weekly/Monthly\" rather than just \"Weekly/Monthly\"
    attr_accessor :misc_boolean1

    # This field has different uses dependent on the ExternalDataProvider, if any.\\n  For Nest, it indicates whether or not to approve payments after submitting contributions
    attr_accessor :misc_boolean2

    # This field has different uses dependent on the ExternalDataProvider, if any.\\n  For Nest, it dictates the PaymentSource.
    attr_accessor :misc_string1

    # This field has different uses dependent on the ExternalDataProvider, if any.
    attr_accessor :misc_string2

    # The number of days or months that an employee has to Opt out after being enrolled
    attr_accessor :opt_out_window

    # Determines whether the value given for OptOutWindow is in Months (true) or days (false)
    attr_accessor :opt_out_window_is_months

    # [readonly] The unique id of the object
    attr_accessor :id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'account_no' => :'accountNo',
        :'portal' => :'portal',
        :'website' => :'website',
        :'address' => :'address',
        :'telephone' => :'telephone',
        :'papdis_version' => :'papdisVersion',
        :'papdis_provider_id' => :'papdisProviderId',
        :'papdis_employer_id' => :'papdisEmployerId',
        :'csv_format' => :'csvFormat',
        :'exclude_nil_paid_from_contributions' => :'excludeNilPaidFromContributions',
        :'pay_period_date_adjustment' => :'payPeriodDateAdjustment',
        :'misc_boolean1' => :'miscBoolean1',
        :'misc_boolean2' => :'miscBoolean2',
        :'misc_string1' => :'miscString1',
        :'misc_string2' => :'miscString2',
        :'opt_out_window' => :'optOutWindow',
        :'opt_out_window_is_months' => :'optOutWindowIsMonths',
        :'id' => :'id'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'Object',
        :'account_no' => :'Object',
        :'portal' => :'Object',
        :'website' => :'Object',
        :'address' => :'Object',
        :'telephone' => :'Object',
        :'papdis_version' => :'Object',
        :'papdis_provider_id' => :'Object',
        :'papdis_employer_id' => :'Object',
        :'csv_format' => :'Object',
        :'exclude_nil_paid_from_contributions' => :'Object',
        :'pay_period_date_adjustment' => :'Object',
        :'misc_boolean1' => :'Object',
        :'misc_boolean2' => :'Object',
        :'misc_string1' => :'Object',
        :'misc_string2' => :'Object',
        :'opt_out_window' => :'Object',
        :'opt_out_window_is_months' => :'Object',
        :'id' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'account_no',
        :'portal',
        :'website',
        :'telephone',
        :'papdis_provider_id',
        :'papdis_employer_id',
        :'misc_string1',
        :'misc_string2',
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SwaggerClient::PensionProvider` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SwaggerClient::PensionProvider`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'account_no')
        self.account_no = attributes[:'account_no']
      end

      if attributes.key?(:'portal')
        self.portal = attributes[:'portal']
      end

      if attributes.key?(:'website')
        self.website = attributes[:'website']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'telephone')
        self.telephone = attributes[:'telephone']
      end

      if attributes.key?(:'papdis_version')
        self.papdis_version = attributes[:'papdis_version']
      end

      if attributes.key?(:'papdis_provider_id')
        self.papdis_provider_id = attributes[:'papdis_provider_id']
      end

      if attributes.key?(:'papdis_employer_id')
        self.papdis_employer_id = attributes[:'papdis_employer_id']
      end

      if attributes.key?(:'csv_format')
        self.csv_format = attributes[:'csv_format']
      end

      if attributes.key?(:'exclude_nil_paid_from_contributions')
        self.exclude_nil_paid_from_contributions = attributes[:'exclude_nil_paid_from_contributions']
      end

      if attributes.key?(:'pay_period_date_adjustment')
        self.pay_period_date_adjustment = attributes[:'pay_period_date_adjustment']
      end

      if attributes.key?(:'misc_boolean1')
        self.misc_boolean1 = attributes[:'misc_boolean1']
      end

      if attributes.key?(:'misc_boolean2')
        self.misc_boolean2 = attributes[:'misc_boolean2']
      end

      if attributes.key?(:'misc_string1')
        self.misc_string1 = attributes[:'misc_string1']
      end

      if attributes.key?(:'misc_string2')
        self.misc_string2 = attributes[:'misc_string2']
      end

      if attributes.key?(:'opt_out_window')
        self.opt_out_window = attributes[:'opt_out_window']
      end

      if attributes.key?(:'opt_out_window_is_months')
        self.opt_out_window_is_months = attributes[:'opt_out_window_is_months']
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
          account_no == o.account_no &&
          portal == o.portal &&
          website == o.website &&
          address == o.address &&
          telephone == o.telephone &&
          papdis_version == o.papdis_version &&
          papdis_provider_id == o.papdis_provider_id &&
          papdis_employer_id == o.papdis_employer_id &&
          csv_format == o.csv_format &&
          exclude_nil_paid_from_contributions == o.exclude_nil_paid_from_contributions &&
          pay_period_date_adjustment == o.pay_period_date_adjustment &&
          misc_boolean1 == o.misc_boolean1 &&
          misc_boolean2 == o.misc_boolean2 &&
          misc_string1 == o.misc_string1 &&
          misc_string2 == o.misc_string2 &&
          opt_out_window == o.opt_out_window &&
          opt_out_window_is_months == o.opt_out_window_is_months &&
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
      [name, account_no, portal, website, address, telephone, papdis_version, papdis_provider_id, papdis_employer_id, csv_format, exclude_nil_paid_from_contributions, pay_period_date_adjustment, misc_boolean1, misc_boolean2, misc_string1, misc_string2, opt_out_window, opt_out_window_is_months, id].hash
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
