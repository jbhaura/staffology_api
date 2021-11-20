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
  class CisSubContractor
    attr_accessor :employee_unique_id

    attr_accessor :email_statement_to

    attr_accessor :number_of_payments

    attr_accessor :item

    attr_accessor :display_name

    attr_accessor :action

    attr_accessor :type

    attr_accessor :name

    attr_accessor :trading_name

    attr_accessor :works_ref

    attr_accessor :unmatched_rate

    attr_accessor :utr

    attr_accessor :crn

    attr_accessor :nino

    attr_accessor :partnership

    attr_accessor :address

    attr_accessor :telephone

    attr_accessor :total_payments_unrounded

    attr_accessor :cost_of_materials_unrounded

    attr_accessor :umbrella_fee

    attr_accessor :validation_msg

    attr_accessor :verification_number

    attr_accessor :total_payments

    attr_accessor :cost_of_materials

    attr_accessor :total_deducted

    attr_accessor :matched

    attr_accessor :tax_treatment

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'employee_unique_id' => :'employeeUniqueId',
        :'email_statement_to' => :'emailStatementTo',
        :'number_of_payments' => :'numberOfPayments',
        :'item' => :'item',
        :'display_name' => :'displayName',
        :'action' => :'action',
        :'type' => :'type',
        :'name' => :'name',
        :'trading_name' => :'tradingName',
        :'works_ref' => :'worksRef',
        :'unmatched_rate' => :'unmatchedRate',
        :'utr' => :'utr',
        :'crn' => :'crn',
        :'nino' => :'nino',
        :'partnership' => :'partnership',
        :'address' => :'address',
        :'telephone' => :'telephone',
        :'total_payments_unrounded' => :'totalPaymentsUnrounded',
        :'cost_of_materials_unrounded' => :'costOfMaterialsUnrounded',
        :'umbrella_fee' => :'umbrellaFee',
        :'validation_msg' => :'validationMsg',
        :'verification_number' => :'verificationNumber',
        :'total_payments' => :'totalPayments',
        :'cost_of_materials' => :'costOfMaterials',
        :'total_deducted' => :'totalDeducted',
        :'matched' => :'matched',
        :'tax_treatment' => :'taxTreatment'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'employee_unique_id' => :'Object',
        :'email_statement_to' => :'Object',
        :'number_of_payments' => :'Object',
        :'item' => :'Object',
        :'display_name' => :'Object',
        :'action' => :'Object',
        :'type' => :'Object',
        :'name' => :'Object',
        :'trading_name' => :'Object',
        :'works_ref' => :'Object',
        :'unmatched_rate' => :'Object',
        :'utr' => :'Object',
        :'crn' => :'Object',
        :'nino' => :'Object',
        :'partnership' => :'Object',
        :'address' => :'Object',
        :'telephone' => :'Object',
        :'total_payments_unrounded' => :'Object',
        :'cost_of_materials_unrounded' => :'Object',
        :'umbrella_fee' => :'Object',
        :'validation_msg' => :'Object',
        :'verification_number' => :'Object',
        :'total_payments' => :'Object',
        :'cost_of_materials' => :'Object',
        :'total_deducted' => :'Object',
        :'matched' => :'Object',
        :'tax_treatment' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'email_statement_to',
        :'display_name',
        :'action',
        :'type',
        :'trading_name',
        :'works_ref',
        :'unmatched_rate',
        :'utr',
        :'crn',
        :'nino',
        :'telephone',
        :'total_payments_unrounded',
        :'cost_of_materials_unrounded',
        :'umbrella_fee',
        :'validation_msg',
        :'verification_number',
        :'total_payments',
        :'cost_of_materials',
        :'total_deducted',
        :'matched',
        :'tax_treatment'
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SwaggerClient::CisSubContractor` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SwaggerClient::CisSubContractor`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'employee_unique_id')
        self.employee_unique_id = attributes[:'employee_unique_id']
      end

      if attributes.key?(:'email_statement_to')
        self.email_statement_to = attributes[:'email_statement_to']
      end

      if attributes.key?(:'number_of_payments')
        self.number_of_payments = attributes[:'number_of_payments']
      end

      if attributes.key?(:'item')
        self.item = attributes[:'item']
      end

      if attributes.key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.key?(:'action')
        self.action = attributes[:'action']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'trading_name')
        self.trading_name = attributes[:'trading_name']
      end

      if attributes.key?(:'works_ref')
        self.works_ref = attributes[:'works_ref']
      end

      if attributes.key?(:'unmatched_rate')
        self.unmatched_rate = attributes[:'unmatched_rate']
      end

      if attributes.key?(:'utr')
        self.utr = attributes[:'utr']
      end

      if attributes.key?(:'crn')
        self.crn = attributes[:'crn']
      end

      if attributes.key?(:'nino')
        self.nino = attributes[:'nino']
      end

      if attributes.key?(:'partnership')
        self.partnership = attributes[:'partnership']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'telephone')
        self.telephone = attributes[:'telephone']
      end

      if attributes.key?(:'total_payments_unrounded')
        self.total_payments_unrounded = attributes[:'total_payments_unrounded']
      end

      if attributes.key?(:'cost_of_materials_unrounded')
        self.cost_of_materials_unrounded = attributes[:'cost_of_materials_unrounded']
      end

      if attributes.key?(:'umbrella_fee')
        self.umbrella_fee = attributes[:'umbrella_fee']
      end

      if attributes.key?(:'validation_msg')
        self.validation_msg = attributes[:'validation_msg']
      end

      if attributes.key?(:'verification_number')
        self.verification_number = attributes[:'verification_number']
      end

      if attributes.key?(:'total_payments')
        self.total_payments = attributes[:'total_payments']
      end

      if attributes.key?(:'cost_of_materials')
        self.cost_of_materials = attributes[:'cost_of_materials']
      end

      if attributes.key?(:'total_deducted')
        self.total_deducted = attributes[:'total_deducted']
      end

      if attributes.key?(:'matched')
        self.matched = attributes[:'matched']
      end

      if attributes.key?(:'tax_treatment')
        self.tax_treatment = attributes[:'tax_treatment']
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
          employee_unique_id == o.employee_unique_id &&
          email_statement_to == o.email_statement_to &&
          number_of_payments == o.number_of_payments &&
          item == o.item &&
          display_name == o.display_name &&
          action == o.action &&
          type == o.type &&
          name == o.name &&
          trading_name == o.trading_name &&
          works_ref == o.works_ref &&
          unmatched_rate == o.unmatched_rate &&
          utr == o.utr &&
          crn == o.crn &&
          nino == o.nino &&
          partnership == o.partnership &&
          address == o.address &&
          telephone == o.telephone &&
          total_payments_unrounded == o.total_payments_unrounded &&
          cost_of_materials_unrounded == o.cost_of_materials_unrounded &&
          umbrella_fee == o.umbrella_fee &&
          validation_msg == o.validation_msg &&
          verification_number == o.verification_number &&
          total_payments == o.total_payments &&
          cost_of_materials == o.cost_of_materials &&
          total_deducted == o.total_deducted &&
          matched == o.matched &&
          tax_treatment == o.tax_treatment
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [employee_unique_id, email_statement_to, number_of_payments, item, display_name, action, type, name, trading_name, works_ref, unmatched_rate, utr, crn, nino, partnership, address, telephone, total_payments_unrounded, cost_of_materials_unrounded, umbrella_fee, validation_msg, verification_number, total_payments, cost_of_materials, total_deducted, matched, tax_treatment].hash
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
