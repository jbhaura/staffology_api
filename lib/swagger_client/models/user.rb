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
  # Represents a User Account.\\n  As well as basic details about the user it also includes details of Employers that the user account can access.
  class User
    attr_accessor :email_address

    # If the user has requested to change their email address then the   address it'll be changed to after verification will be shown here.
    attr_accessor :pending_email_address

    attr_accessor :first_name

    attr_accessor :last_name

    attr_accessor :salutation

    attr_accessor :user_identifier

    attr_accessor :photo

    attr_accessor :role

    attr_accessor :job_type

    attr_accessor :job_title

    attr_accessor :telephone_number

    attr_accessor :business_name

    attr_accessor :industry

    attr_accessor :address

    attr_accessor :stated_employee_count

    attr_accessor :email_verified

    attr_accessor :gdpr_optin

    attr_accessor :invite_code

    attr_accessor :registration_ip

    attr_accessor :registration_date

    attr_accessor :last_login

    attr_accessor :is_activated

    attr_accessor :authorization

    attr_accessor :is_super_admin

    attr_accessor :can_use_bureau_features

    attr_accessor :tenant

    # [readonly] If true then the user is required to set up a direct debit mandate
    attr_accessor :request_dd_setup

    # [readonly] If true then any employers the owner managed will not be able to run new payruns.\\n  DisabledReason will give a reason why the account is disabled
    attr_accessor :disabled

    # [readonly] If false then the user cannot create new employers.\\n  This can be turned on or off by the tenant admin.
    attr_accessor :can_create_employers

    attr_accessor :disabled_reason

    attr_accessor :direct_debit_mandate

    attr_accessor :display_prefs

    # [readonly] Whether or not the user can see bills. This will be false if the Tenant manages billing and the user is not an admin for the Tenant
    attr_accessor :show_bills

    # [readonly] Used internally to manage billing
    attr_accessor :accounting_customer_id

    attr_accessor :utm_info

    attr_accessor :first_billable_activity_date

    attr_accessor :bureau_notification_email_address

    # [readonly] The unique id of the object
    attr_accessor :id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'email_address' => :'emailAddress',
        :'pending_email_address' => :'pendingEmailAddress',
        :'first_name' => :'firstName',
        :'last_name' => :'lastName',
        :'salutation' => :'salutation',
        :'user_identifier' => :'userIdentifier',
        :'photo' => :'photo',
        :'role' => :'role',
        :'job_type' => :'jobType',
        :'job_title' => :'jobTitle',
        :'telephone_number' => :'telephoneNumber',
        :'business_name' => :'businessName',
        :'industry' => :'industry',
        :'address' => :'address',
        :'stated_employee_count' => :'statedEmployeeCount',
        :'email_verified' => :'emailVerified',
        :'gdpr_optin' => :'gdprOptin',
        :'invite_code' => :'inviteCode',
        :'registration_ip' => :'registrationIp',
        :'registration_date' => :'registrationDate',
        :'last_login' => :'lastLogin',
        :'is_activated' => :'isActivated',
        :'authorization' => :'authorization',
        :'is_super_admin' => :'isSuperAdmin',
        :'can_use_bureau_features' => :'canUseBureauFeatures',
        :'tenant' => :'tenant',
        :'request_dd_setup' => :'requestDdSetup',
        :'disabled' => :'disabled',
        :'can_create_employers' => :'canCreateEmployers',
        :'disabled_reason' => :'disabledReason',
        :'direct_debit_mandate' => :'directDebitMandate',
        :'display_prefs' => :'displayPrefs',
        :'show_bills' => :'showBills',
        :'accounting_customer_id' => :'accountingCustomerId',
        :'utm_info' => :'utmInfo',
        :'first_billable_activity_date' => :'firstBillableActivityDate',
        :'bureau_notification_email_address' => :'bureauNotificationEmailAddress',
        :'id' => :'id'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'email_address' => :'Object',
        :'pending_email_address' => :'Object',
        :'first_name' => :'Object',
        :'last_name' => :'Object',
        :'salutation' => :'Object',
        :'user_identifier' => :'Object',
        :'photo' => :'Object',
        :'role' => :'Object',
        :'job_type' => :'Object',
        :'job_title' => :'Object',
        :'telephone_number' => :'Object',
        :'business_name' => :'Object',
        :'industry' => :'Object',
        :'address' => :'Object',
        :'stated_employee_count' => :'Object',
        :'email_verified' => :'Object',
        :'gdpr_optin' => :'Object',
        :'invite_code' => :'Object',
        :'registration_ip' => :'Object',
        :'registration_date' => :'Object',
        :'last_login' => :'Object',
        :'is_activated' => :'Object',
        :'authorization' => :'Object',
        :'is_super_admin' => :'Object',
        :'can_use_bureau_features' => :'Object',
        :'tenant' => :'Object',
        :'request_dd_setup' => :'Object',
        :'disabled' => :'Object',
        :'can_create_employers' => :'Object',
        :'disabled_reason' => :'Object',
        :'direct_debit_mandate' => :'Object',
        :'display_prefs' => :'Object',
        :'show_bills' => :'Object',
        :'accounting_customer_id' => :'Object',
        :'utm_info' => :'Object',
        :'first_billable_activity_date' => :'Object',
        :'bureau_notification_email_address' => :'Object',
        :'id' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'email_address',
        :'pending_email_address',
        :'first_name',
        :'last_name',
        :'salutation',
        :'user_identifier',
        :'photo',
        :'job_title',
        :'telephone_number',
        :'business_name',
        :'stated_employee_count',
        :'invite_code',
        :'registration_ip',
        :'last_login',
        :'disabled_reason',
        :'show_bills',
        :'accounting_customer_id',
        :'first_billable_activity_date',
        :'bureau_notification_email_address',
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SwaggerClient::User` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SwaggerClient::User`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'email_address')
        self.email_address = attributes[:'email_address']
      end

      if attributes.key?(:'pending_email_address')
        self.pending_email_address = attributes[:'pending_email_address']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'salutation')
        self.salutation = attributes[:'salutation']
      end

      if attributes.key?(:'user_identifier')
        self.user_identifier = attributes[:'user_identifier']
      end

      if attributes.key?(:'photo')
        self.photo = attributes[:'photo']
      end

      if attributes.key?(:'role')
        self.role = attributes[:'role']
      end

      if attributes.key?(:'job_type')
        self.job_type = attributes[:'job_type']
      end

      if attributes.key?(:'job_title')
        self.job_title = attributes[:'job_title']
      end

      if attributes.key?(:'telephone_number')
        self.telephone_number = attributes[:'telephone_number']
      end

      if attributes.key?(:'business_name')
        self.business_name = attributes[:'business_name']
      end

      if attributes.key?(:'industry')
        self.industry = attributes[:'industry']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'stated_employee_count')
        self.stated_employee_count = attributes[:'stated_employee_count']
      end

      if attributes.key?(:'email_verified')
        self.email_verified = attributes[:'email_verified']
      end

      if attributes.key?(:'gdpr_optin')
        self.gdpr_optin = attributes[:'gdpr_optin']
      end

      if attributes.key?(:'invite_code')
        self.invite_code = attributes[:'invite_code']
      end

      if attributes.key?(:'registration_ip')
        self.registration_ip = attributes[:'registration_ip']
      end

      if attributes.key?(:'registration_date')
        self.registration_date = attributes[:'registration_date']
      end

      if attributes.key?(:'last_login')
        self.last_login = attributes[:'last_login']
      end

      if attributes.key?(:'is_activated')
        self.is_activated = attributes[:'is_activated']
      end

      if attributes.key?(:'authorization')
        self.authorization = attributes[:'authorization']
      end

      if attributes.key?(:'is_super_admin')
        self.is_super_admin = attributes[:'is_super_admin']
      end

      if attributes.key?(:'can_use_bureau_features')
        self.can_use_bureau_features = attributes[:'can_use_bureau_features']
      end

      if attributes.key?(:'tenant')
        self.tenant = attributes[:'tenant']
      end

      if attributes.key?(:'request_dd_setup')
        self.request_dd_setup = attributes[:'request_dd_setup']
      end

      if attributes.key?(:'disabled')
        self.disabled = attributes[:'disabled']
      end

      if attributes.key?(:'can_create_employers')
        self.can_create_employers = attributes[:'can_create_employers']
      end

      if attributes.key?(:'disabled_reason')
        self.disabled_reason = attributes[:'disabled_reason']
      end

      if attributes.key?(:'direct_debit_mandate')
        self.direct_debit_mandate = attributes[:'direct_debit_mandate']
      end

      if attributes.key?(:'display_prefs')
        self.display_prefs = attributes[:'display_prefs']
      end

      if attributes.key?(:'show_bills')
        self.show_bills = attributes[:'show_bills']
      end

      if attributes.key?(:'accounting_customer_id')
        self.accounting_customer_id = attributes[:'accounting_customer_id']
      end

      if attributes.key?(:'utm_info')
        self.utm_info = attributes[:'utm_info']
      end

      if attributes.key?(:'first_billable_activity_date')
        self.first_billable_activity_date = attributes[:'first_billable_activity_date']
      end

      if attributes.key?(:'bureau_notification_email_address')
        self.bureau_notification_email_address = attributes[:'bureau_notification_email_address']
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
          email_address == o.email_address &&
          pending_email_address == o.pending_email_address &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          salutation == o.salutation &&
          user_identifier == o.user_identifier &&
          photo == o.photo &&
          role == o.role &&
          job_type == o.job_type &&
          job_title == o.job_title &&
          telephone_number == o.telephone_number &&
          business_name == o.business_name &&
          industry == o.industry &&
          address == o.address &&
          stated_employee_count == o.stated_employee_count &&
          email_verified == o.email_verified &&
          gdpr_optin == o.gdpr_optin &&
          invite_code == o.invite_code &&
          registration_ip == o.registration_ip &&
          registration_date == o.registration_date &&
          last_login == o.last_login &&
          is_activated == o.is_activated &&
          authorization == o.authorization &&
          is_super_admin == o.is_super_admin &&
          can_use_bureau_features == o.can_use_bureau_features &&
          tenant == o.tenant &&
          request_dd_setup == o.request_dd_setup &&
          disabled == o.disabled &&
          can_create_employers == o.can_create_employers &&
          disabled_reason == o.disabled_reason &&
          direct_debit_mandate == o.direct_debit_mandate &&
          display_prefs == o.display_prefs &&
          show_bills == o.show_bills &&
          accounting_customer_id == o.accounting_customer_id &&
          utm_info == o.utm_info &&
          first_billable_activity_date == o.first_billable_activity_date &&
          bureau_notification_email_address == o.bureau_notification_email_address &&
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
      [email_address, pending_email_address, first_name, last_name, salutation, user_identifier, photo, role, job_type, job_title, telephone_number, business_name, industry, address, stated_employee_count, email_verified, gdpr_optin, invite_code, registration_ip, registration_date, last_login, is_activated, authorization, is_super_admin, can_use_bureau_features, tenant, request_dd_setup, disabled, can_create_employers, disabled_reason, direct_debit_mandate, display_prefs, show_bills, accounting_customer_id, utm_info, first_billable_activity_date, bureau_notification_email_address, id].hash
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
