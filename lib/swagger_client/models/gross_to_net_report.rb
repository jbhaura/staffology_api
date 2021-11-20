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
  class GrossToNetReport
    attr_accessor :for_cis

    attr_accessor :lines

    attr_accessor :cis_lines

    attr_accessor :employer

    attr_accessor :pay_period

    attr_accessor :ordinal

    attr_accessor :period

    attr_accessor :period_to

    attr_accessor :start_period_name

    attr_accessor :end_period_name

    attr_accessor :start_date

    attr_accessor :end_date

    attr_accessor :report

    attr_accessor :tax_year

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'for_cis' => :'forCis',
        :'lines' => :'lines',
        :'cis_lines' => :'cisLines',
        :'employer' => :'employer',
        :'pay_period' => :'payPeriod',
        :'ordinal' => :'ordinal',
        :'period' => :'period',
        :'period_to' => :'periodTo',
        :'start_period_name' => :'startPeriodName',
        :'end_period_name' => :'endPeriodName',
        :'start_date' => :'startDate',
        :'end_date' => :'endDate',
        :'report' => :'report',
        :'tax_year' => :'taxYear'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'for_cis' => :'Object',
        :'lines' => :'Object',
        :'cis_lines' => :'Object',
        :'employer' => :'Object',
        :'pay_period' => :'Object',
        :'ordinal' => :'Object',
        :'period' => :'Object',
        :'period_to' => :'Object',
        :'start_period_name' => :'Object',
        :'end_period_name' => :'Object',
        :'start_date' => :'Object',
        :'end_date' => :'Object',
        :'report' => :'Object',
        :'tax_year' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'lines',
        :'cis_lines',
        :'start_period_name',
        :'end_period_name',
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SwaggerClient::GrossToNetReport` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SwaggerClient::GrossToNetReport`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'for_cis')
        self.for_cis = attributes[:'for_cis']
      end

      if attributes.key?(:'lines')
        if (value = attributes[:'lines']).is_a?(Array)
          self.lines = value
        end
      end

      if attributes.key?(:'cis_lines')
        if (value = attributes[:'cis_lines']).is_a?(Array)
          self.cis_lines = value
        end
      end

      if attributes.key?(:'employer')
        self.employer = attributes[:'employer']
      end

      if attributes.key?(:'pay_period')
        self.pay_period = attributes[:'pay_period']
      end

      if attributes.key?(:'ordinal')
        self.ordinal = attributes[:'ordinal']
      end

      if attributes.key?(:'period')
        self.period = attributes[:'period']
      end

      if attributes.key?(:'period_to')
        self.period_to = attributes[:'period_to']
      end

      if attributes.key?(:'start_period_name')
        self.start_period_name = attributes[:'start_period_name']
      end

      if attributes.key?(:'end_period_name')
        self.end_period_name = attributes[:'end_period_name']
      end

      if attributes.key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.key?(:'end_date')
        self.end_date = attributes[:'end_date']
      end

      if attributes.key?(:'report')
        self.report = attributes[:'report']
      end

      if attributes.key?(:'tax_year')
        self.tax_year = attributes[:'tax_year']
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
          for_cis == o.for_cis &&
          lines == o.lines &&
          cis_lines == o.cis_lines &&
          employer == o.employer &&
          pay_period == o.pay_period &&
          ordinal == o.ordinal &&
          period == o.period &&
          period_to == o.period_to &&
          start_period_name == o.start_period_name &&
          end_period_name == o.end_period_name &&
          start_date == o.start_date &&
          end_date == o.end_date &&
          report == o.report &&
          tax_year == o.tax_year
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [for_cis, lines, cis_lines, employer, pay_period, ordinal, period, period_to, start_period_name, end_period_name, start_date, end_date, report, tax_year].hash
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
