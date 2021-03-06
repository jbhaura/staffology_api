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
  class PensionScheme
    attr_accessor :name

    attr_accessor :provider

    attr_accessor :administrator

    attr_accessor :pension_rule

    # Set to true if this is a Qualifying Scheme for Auto Enrolment
    attr_accessor :qualifying_scheme

    # Set to true if the provider deals with AutoEnrolment Letters and therefore the system should not generate them
    attr_accessor :disable_ae_letters

    attr_accessor :subtract_basic_rate_tax

    attr_accessor :pay_method

    attr_accessor :bank_details

    # If set to true then rather than using the setting on the PayCode to determine if the pay is pensionable  we'll instead treat it as pensionable if the Code is included in CustomPayCodes
    attr_accessor :use_custom_pay_codes

    # If UseCustomPayCodes is set to true then this contains a list of PayCodes.Code  that we'll treat as being pensionable.
    attr_accessor :custom_pay_codes

    # A list of WorkerGroups for this Pension. There must always be at least one WorkerGroup
    attr_accessor :worker_groups

    attr_accessor :external_data_provider_id

    attr_accessor :external_data_company

    # [readonly] The unique id of the object
    attr_accessor :id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'provider' => :'provider',
        :'administrator' => :'administrator',
        :'pension_rule' => :'pensionRule',
        :'qualifying_scheme' => :'qualifyingScheme',
        :'disable_ae_letters' => :'disableAeLetters',
        :'subtract_basic_rate_tax' => :'subtractBasicRateTax',
        :'pay_method' => :'payMethod',
        :'bank_details' => :'bankDetails',
        :'use_custom_pay_codes' => :'useCustomPayCodes',
        :'custom_pay_codes' => :'customPayCodes',
        :'worker_groups' => :'workerGroups',
        :'external_data_provider_id' => :'externalDataProviderId',
        :'external_data_company' => :'externalDataCompany',
        :'id' => :'id'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'Object',
        :'provider' => :'Object',
        :'administrator' => :'Object',
        :'pension_rule' => :'Object',
        :'qualifying_scheme' => :'Object',
        :'disable_ae_letters' => :'Object',
        :'subtract_basic_rate_tax' => :'Object',
        :'pay_method' => :'Object',
        :'bank_details' => :'Object',
        :'use_custom_pay_codes' => :'Object',
        :'custom_pay_codes' => :'Object',
        :'worker_groups' => :'Object',
        :'external_data_provider_id' => :'Object',
        :'external_data_company' => :'Object',
        :'id' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'custom_pay_codes',
        :'worker_groups',
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SwaggerClient::PensionScheme` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SwaggerClient::PensionScheme`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'provider')
        self.provider = attributes[:'provider']
      end

      if attributes.key?(:'administrator')
        self.administrator = attributes[:'administrator']
      end

      if attributes.key?(:'pension_rule')
        self.pension_rule = attributes[:'pension_rule']
      end

      if attributes.key?(:'qualifying_scheme')
        self.qualifying_scheme = attributes[:'qualifying_scheme']
      end

      if attributes.key?(:'disable_ae_letters')
        self.disable_ae_letters = attributes[:'disable_ae_letters']
      end

      if attributes.key?(:'subtract_basic_rate_tax')
        self.subtract_basic_rate_tax = attributes[:'subtract_basic_rate_tax']
      end

      if attributes.key?(:'pay_method')
        self.pay_method = attributes[:'pay_method']
      end

      if attributes.key?(:'bank_details')
        self.bank_details = attributes[:'bank_details']
      end

      if attributes.key?(:'use_custom_pay_codes')
        self.use_custom_pay_codes = attributes[:'use_custom_pay_codes']
      end

      if attributes.key?(:'custom_pay_codes')
        if (value = attributes[:'custom_pay_codes']).is_a?(Array)
          self.custom_pay_codes = value
        end
      end

      if attributes.key?(:'worker_groups')
        if (value = attributes[:'worker_groups']).is_a?(Array)
          self.worker_groups = value
        end
      end

      if attributes.key?(:'external_data_provider_id')
        self.external_data_provider_id = attributes[:'external_data_provider_id']
      end

      if attributes.key?(:'external_data_company')
        self.external_data_company = attributes[:'external_data_company']
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
          provider == o.provider &&
          administrator == o.administrator &&
          pension_rule == o.pension_rule &&
          qualifying_scheme == o.qualifying_scheme &&
          disable_ae_letters == o.disable_ae_letters &&
          subtract_basic_rate_tax == o.subtract_basic_rate_tax &&
          pay_method == o.pay_method &&
          bank_details == o.bank_details &&
          use_custom_pay_codes == o.use_custom_pay_codes &&
          custom_pay_codes == o.custom_pay_codes &&
          worker_groups == o.worker_groups &&
          external_data_provider_id == o.external_data_provider_id &&
          external_data_company == o.external_data_company &&
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
      [name, provider, administrator, pension_rule, qualifying_scheme, disable_ae_letters, subtract_basic_rate_tax, pay_method, bank_details, use_custom_pay_codes, custom_pay_codes, worker_groups, external_data_provider_id, external_data_company, id].hash
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
