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
  class Eps
    attr_accessor :period_of_inactivity

    attr_accessor :no_payment_for_period

    attr_accessor :final_submission

    attr_accessor :recoverable_amounts

    attr_accessor :apprenticeship_levy

    attr_accessor :account

    attr_accessor :eligible_for_employment_allowance

    attr_accessor :de_minimis_state_aid

    attr_accessor :i_rmark

    attr_accessor :xml

    attr_accessor :tax_year

    attr_accessor :employer_references

    attr_accessor :gov_talk_submission

    # [readonly] The unique id of the object
    attr_accessor :id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'period_of_inactivity' => :'periodOfInactivity',
        :'no_payment_for_period' => :'noPaymentForPeriod',
        :'final_submission' => :'finalSubmission',
        :'recoverable_amounts' => :'recoverableAmounts',
        :'apprenticeship_levy' => :'apprenticeshipLevy',
        :'account' => :'account',
        :'eligible_for_employment_allowance' => :'eligibleForEmploymentAllowance',
        :'de_minimis_state_aid' => :'deMinimisStateAid',
        :'i_rmark' => :'iRmark',
        :'xml' => :'xml',
        :'tax_year' => :'taxYear',
        :'employer_references' => :'employerReferences',
        :'gov_talk_submission' => :'govTalkSubmission',
        :'id' => :'id'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'period_of_inactivity' => :'Object',
        :'no_payment_for_period' => :'Object',
        :'final_submission' => :'Object',
        :'recoverable_amounts' => :'Object',
        :'apprenticeship_levy' => :'Object',
        :'account' => :'Object',
        :'eligible_for_employment_allowance' => :'Object',
        :'de_minimis_state_aid' => :'Object',
        :'i_rmark' => :'Object',
        :'xml' => :'Object',
        :'tax_year' => :'Object',
        :'employer_references' => :'Object',
        :'gov_talk_submission' => :'Object',
        :'id' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'eligible_for_employment_allowance',
        :'i_rmark',
        :'xml',
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SwaggerClient::Eps` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SwaggerClient::Eps`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'period_of_inactivity')
        self.period_of_inactivity = attributes[:'period_of_inactivity']
      end

      if attributes.key?(:'no_payment_for_period')
        self.no_payment_for_period = attributes[:'no_payment_for_period']
      end

      if attributes.key?(:'final_submission')
        self.final_submission = attributes[:'final_submission']
      end

      if attributes.key?(:'recoverable_amounts')
        self.recoverable_amounts = attributes[:'recoverable_amounts']
      end

      if attributes.key?(:'apprenticeship_levy')
        self.apprenticeship_levy = attributes[:'apprenticeship_levy']
      end

      if attributes.key?(:'account')
        self.account = attributes[:'account']
      end

      if attributes.key?(:'eligible_for_employment_allowance')
        self.eligible_for_employment_allowance = attributes[:'eligible_for_employment_allowance']
      end

      if attributes.key?(:'de_minimis_state_aid')
        self.de_minimis_state_aid = attributes[:'de_minimis_state_aid']
      end

      if attributes.key?(:'i_rmark')
        self.i_rmark = attributes[:'i_rmark']
      end

      if attributes.key?(:'xml')
        self.xml = attributes[:'xml']
      end

      if attributes.key?(:'tax_year')
        self.tax_year = attributes[:'tax_year']
      end

      if attributes.key?(:'employer_references')
        self.employer_references = attributes[:'employer_references']
      end

      if attributes.key?(:'gov_talk_submission')
        self.gov_talk_submission = attributes[:'gov_talk_submission']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
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
          period_of_inactivity == o.period_of_inactivity &&
          no_payment_for_period == o.no_payment_for_period &&
          final_submission == o.final_submission &&
          recoverable_amounts == o.recoverable_amounts &&
          apprenticeship_levy == o.apprenticeship_levy &&
          account == o.account &&
          eligible_for_employment_allowance == o.eligible_for_employment_allowance &&
          de_minimis_state_aid == o.de_minimis_state_aid &&
          i_rmark == o.i_rmark &&
          xml == o.xml &&
          tax_year == o.tax_year &&
          employer_references == o.employer_references &&
          gov_talk_submission == o.gov_talk_submission &&
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
      [period_of_inactivity, no_payment_for_period, final_submission, recoverable_amounts, apprenticeship_levy, account, eligible_for_employment_allowance, de_minimis_state_aid, i_rmark, xml, tax_year, employer_references, gov_talk_submission, id].hash
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
