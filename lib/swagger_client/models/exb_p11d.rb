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
  class ExbP11d
    attr_accessor :employee

    attr_accessor :transferred

    attr_accessor :payments

    attr_accessor :vouchers_or_c_cs

    attr_accessor :living_accom

    attr_accessor :mileage_allow

    attr_accessor :cars

    attr_accessor :vans

    attr_accessor :loans

    attr_accessor :medical

    attr_accessor :relocation

    attr_accessor :services

    attr_accessor :assets_avail

    attr_accessor :other

    attr_accessor :exp_paid

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'employee' => :'employee',
        :'transferred' => :'transferred',
        :'payments' => :'payments',
        :'vouchers_or_c_cs' => :'vouchersOrCCs',
        :'living_accom' => :'livingAccom',
        :'mileage_allow' => :'mileageAllow',
        :'cars' => :'cars',
        :'vans' => :'vans',
        :'loans' => :'loans',
        :'medical' => :'medical',
        :'relocation' => :'relocation',
        :'services' => :'services',
        :'assets_avail' => :'assetsAvail',
        :'other' => :'other',
        :'exp_paid' => :'expPaid'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'employee' => :'Object',
        :'transferred' => :'Object',
        :'payments' => :'Object',
        :'vouchers_or_c_cs' => :'Object',
        :'living_accom' => :'Object',
        :'mileage_allow' => :'Object',
        :'cars' => :'Object',
        :'vans' => :'Object',
        :'loans' => :'Object',
        :'medical' => :'Object',
        :'relocation' => :'Object',
        :'services' => :'Object',
        :'assets_avail' => :'Object',
        :'other' => :'Object',
        :'exp_paid' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `SwaggerClient::ExbP11d` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SwaggerClient::ExbP11d`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'employee')
        self.employee = attributes[:'employee']
      end

      if attributes.key?(:'transferred')
        self.transferred = attributes[:'transferred']
      end

      if attributes.key?(:'payments')
        self.payments = attributes[:'payments']
      end

      if attributes.key?(:'vouchers_or_c_cs')
        self.vouchers_or_c_cs = attributes[:'vouchers_or_c_cs']
      end

      if attributes.key?(:'living_accom')
        self.living_accom = attributes[:'living_accom']
      end

      if attributes.key?(:'mileage_allow')
        self.mileage_allow = attributes[:'mileage_allow']
      end

      if attributes.key?(:'cars')
        self.cars = attributes[:'cars']
      end

      if attributes.key?(:'vans')
        self.vans = attributes[:'vans']
      end

      if attributes.key?(:'loans')
        self.loans = attributes[:'loans']
      end

      if attributes.key?(:'medical')
        self.medical = attributes[:'medical']
      end

      if attributes.key?(:'relocation')
        self.relocation = attributes[:'relocation']
      end

      if attributes.key?(:'services')
        self.services = attributes[:'services']
      end

      if attributes.key?(:'assets_avail')
        self.assets_avail = attributes[:'assets_avail']
      end

      if attributes.key?(:'other')
        self.other = attributes[:'other']
      end

      if attributes.key?(:'exp_paid')
        self.exp_paid = attributes[:'exp_paid']
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
          employee == o.employee &&
          transferred == o.transferred &&
          payments == o.payments &&
          vouchers_or_c_cs == o.vouchers_or_c_cs &&
          living_accom == o.living_accom &&
          mileage_allow == o.mileage_allow &&
          cars == o.cars &&
          vans == o.vans &&
          loans == o.loans &&
          medical == o.medical &&
          relocation == o.relocation &&
          services == o.services &&
          assets_avail == o.assets_avail &&
          other == o.other &&
          exp_paid == o.exp_paid
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [employee, transferred, payments, vouchers_or_c_cs, living_accom, mileage_allow, cars, vans, loans, medical, relocation, services, assets_avail, other, exp_paid].hash
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
