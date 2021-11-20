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
  class Pension
    attr_accessor :contribution_level_type

    # [readonly] The unique id of the object
    attr_accessor :id

    attr_accessor :pension_scheme_id

    attr_accessor :pension_scheme

    attr_accessor :worker_group_id

    attr_accessor :worker_group

    attr_accessor :start_date

    attr_accessor :member_reference_number

    # If this is set to true then the Contributions levels set for the WorkerGroup will be replaced with the values provided here
    attr_accessor :override_contributions

    # The amount the employee contributes towards the pension. Could be a percentage or a fixed amount depending on EmployeeContributionIsPercentage.\\n  This is read-only if OverrideContributions is false
    attr_accessor :employee_contribution

    # Determines whether the Value of the EmployeeContribution is a fixed amount or a percentage,
    attr_accessor :employee_contribution_is_percentage

    # The amount the employer contributes towards the pension. Could be a percentage or a fixed amount depending on EmployerContributionIsPercentage.\\n  This is read-only if OverrideContributions is false
    attr_accessor :employer_contribution

    # Determines whether the Value of the EmployerContribution is a fixed amount or a percentage,
    attr_accessor :employer_contribution_is_percentage

    # Increase Employer Contribution by this percentage of the Employee Contribution
    attr_accessor :employer_contribution_top_up_percentage

    # [readonly] Whether or not the associated PensionScheme is a Qualifying Scheme for AutoEnrolment
    attr_accessor :is_ae_qualifying_scheme

    # [readonly] Whether or not the associated PensionScheme is a Teachers' Pension (determined by its CsvFormat)
    attr_accessor :is_teachers_pension

    attr_accessor :ae_status_at_joining

    # [readonly]
    attr_accessor :external_employee_id

    # Any additional voluntary amount the employer contributes towards the pension. Could be a percentage or a fixed amount depending on AvcIsPercentage.\\n
    attr_accessor :additional_voluntary_contribution

    # Determines whether the Value of the Additional Voluntary Contribution is a fixed amount or a percentage,
    attr_accessor :avc_is_percentage

    attr_accessor :exit_via_provider

    attr_accessor :teachers_pension_details

    # If the WorkerGroup ContributionLevelType is a Tiered Scheme then you can specify the name of the tier to force the employee on to.\\n  If none is specified then the Tier is determined by the earnings in the period
    attr_accessor :forced_tier

    # If the PensionScheme is connected to an ExternalDataProvider that supports enrolment then setting this to true will force this employee to be enrolled with the next submission.
    attr_accessor :force_enrolment

    # [readonly] Is True if the employee joined this Pension due to an AutoEnrolment action
    attr_accessor :auto_enrolled

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'contribution_level_type' => :'contributionLevelType',
        :'id' => :'id',
        :'pension_scheme_id' => :'pensionSchemeId',
        :'pension_scheme' => :'pensionScheme',
        :'worker_group_id' => :'workerGroupId',
        :'worker_group' => :'workerGroup',
        :'start_date' => :'startDate',
        :'member_reference_number' => :'memberReferenceNumber',
        :'override_contributions' => :'overrideContributions',
        :'employee_contribution' => :'employeeContribution',
        :'employee_contribution_is_percentage' => :'employeeContributionIsPercentage',
        :'employer_contribution' => :'employerContribution',
        :'employer_contribution_is_percentage' => :'employerContributionIsPercentage',
        :'employer_contribution_top_up_percentage' => :'employerContributionTopUpPercentage',
        :'is_ae_qualifying_scheme' => :'isAeQualifyingScheme',
        :'is_teachers_pension' => :'isTeachersPension',
        :'ae_status_at_joining' => :'aeStatusAtJoining',
        :'external_employee_id' => :'externalEmployeeId',
        :'additional_voluntary_contribution' => :'additionalVoluntaryContribution',
        :'avc_is_percentage' => :'avcIsPercentage',
        :'exit_via_provider' => :'exitViaProvider',
        :'teachers_pension_details' => :'teachersPensionDetails',
        :'forced_tier' => :'forcedTier',
        :'force_enrolment' => :'forceEnrolment',
        :'auto_enrolled' => :'autoEnrolled'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'contribution_level_type' => :'Object',
        :'id' => :'Object',
        :'pension_scheme_id' => :'Object',
        :'pension_scheme' => :'Object',
        :'worker_group_id' => :'Object',
        :'worker_group' => :'Object',
        :'start_date' => :'Object',
        :'member_reference_number' => :'Object',
        :'override_contributions' => :'Object',
        :'employee_contribution' => :'Object',
        :'employee_contribution_is_percentage' => :'Object',
        :'employer_contribution' => :'Object',
        :'employer_contribution_is_percentage' => :'Object',
        :'employer_contribution_top_up_percentage' => :'Object',
        :'is_ae_qualifying_scheme' => :'Object',
        :'is_teachers_pension' => :'Object',
        :'ae_status_at_joining' => :'Object',
        :'external_employee_id' => :'Object',
        :'additional_voluntary_contribution' => :'Object',
        :'avc_is_percentage' => :'Object',
        :'exit_via_provider' => :'Object',
        :'teachers_pension_details' => :'Object',
        :'forced_tier' => :'Object',
        :'force_enrolment' => :'Object',
        :'auto_enrolled' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'member_reference_number',
        :'external_employee_id',
        :'forced_tier',
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SwaggerClient::Pension` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SwaggerClient::Pension`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'contribution_level_type')
        self.contribution_level_type = attributes[:'contribution_level_type']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'pension_scheme_id')
        self.pension_scheme_id = attributes[:'pension_scheme_id']
      end

      if attributes.key?(:'pension_scheme')
        self.pension_scheme = attributes[:'pension_scheme']
      end

      if attributes.key?(:'worker_group_id')
        self.worker_group_id = attributes[:'worker_group_id']
      end

      if attributes.key?(:'worker_group')
        self.worker_group = attributes[:'worker_group']
      end

      if attributes.key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.key?(:'member_reference_number')
        self.member_reference_number = attributes[:'member_reference_number']
      end

      if attributes.key?(:'override_contributions')
        self.override_contributions = attributes[:'override_contributions']
      end

      if attributes.key?(:'employee_contribution')
        self.employee_contribution = attributes[:'employee_contribution']
      end

      if attributes.key?(:'employee_contribution_is_percentage')
        self.employee_contribution_is_percentage = attributes[:'employee_contribution_is_percentage']
      end

      if attributes.key?(:'employer_contribution')
        self.employer_contribution = attributes[:'employer_contribution']
      end

      if attributes.key?(:'employer_contribution_is_percentage')
        self.employer_contribution_is_percentage = attributes[:'employer_contribution_is_percentage']
      end

      if attributes.key?(:'employer_contribution_top_up_percentage')
        self.employer_contribution_top_up_percentage = attributes[:'employer_contribution_top_up_percentage']
      end

      if attributes.key?(:'is_ae_qualifying_scheme')
        self.is_ae_qualifying_scheme = attributes[:'is_ae_qualifying_scheme']
      end

      if attributes.key?(:'is_teachers_pension')
        self.is_teachers_pension = attributes[:'is_teachers_pension']
      end

      if attributes.key?(:'ae_status_at_joining')
        self.ae_status_at_joining = attributes[:'ae_status_at_joining']
      end

      if attributes.key?(:'external_employee_id')
        self.external_employee_id = attributes[:'external_employee_id']
      end

      if attributes.key?(:'additional_voluntary_contribution')
        self.additional_voluntary_contribution = attributes[:'additional_voluntary_contribution']
      end

      if attributes.key?(:'avc_is_percentage')
        self.avc_is_percentage = attributes[:'avc_is_percentage']
      end

      if attributes.key?(:'exit_via_provider')
        self.exit_via_provider = attributes[:'exit_via_provider']
      end

      if attributes.key?(:'teachers_pension_details')
        self.teachers_pension_details = attributes[:'teachers_pension_details']
      end

      if attributes.key?(:'forced_tier')
        self.forced_tier = attributes[:'forced_tier']
      end

      if attributes.key?(:'force_enrolment')
        self.force_enrolment = attributes[:'force_enrolment']
      end

      if attributes.key?(:'auto_enrolled')
        self.auto_enrolled = attributes[:'auto_enrolled']
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
          contribution_level_type == o.contribution_level_type &&
          id == o.id &&
          pension_scheme_id == o.pension_scheme_id &&
          pension_scheme == o.pension_scheme &&
          worker_group_id == o.worker_group_id &&
          worker_group == o.worker_group &&
          start_date == o.start_date &&
          member_reference_number == o.member_reference_number &&
          override_contributions == o.override_contributions &&
          employee_contribution == o.employee_contribution &&
          employee_contribution_is_percentage == o.employee_contribution_is_percentage &&
          employer_contribution == o.employer_contribution &&
          employer_contribution_is_percentage == o.employer_contribution_is_percentage &&
          employer_contribution_top_up_percentage == o.employer_contribution_top_up_percentage &&
          is_ae_qualifying_scheme == o.is_ae_qualifying_scheme &&
          is_teachers_pension == o.is_teachers_pension &&
          ae_status_at_joining == o.ae_status_at_joining &&
          external_employee_id == o.external_employee_id &&
          additional_voluntary_contribution == o.additional_voluntary_contribution &&
          avc_is_percentage == o.avc_is_percentage &&
          exit_via_provider == o.exit_via_provider &&
          teachers_pension_details == o.teachers_pension_details &&
          forced_tier == o.forced_tier &&
          force_enrolment == o.force_enrolment &&
          auto_enrolled == o.auto_enrolled
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [contribution_level_type, id, pension_scheme_id, pension_scheme, worker_group_id, worker_group, start_date, member_reference_number, override_contributions, employee_contribution, employee_contribution_is_percentage, employer_contribution, employer_contribution_is_percentage, employer_contribution_top_up_percentage, is_ae_qualifying_scheme, is_teachers_pension, ae_status_at_joining, external_employee_id, additional_voluntary_contribution, avc_is_percentage, exit_via_provider, teachers_pension_details, forced_tier, force_enrolment, auto_enrolled].hash
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