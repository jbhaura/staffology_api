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
  # The Tenant model represents the brand that provides the account.\\n  This is used by our White Label partners to manage and brand their user accounts.\\n  Unless you are an admin for a White Label account you'll have no interest in this model.
  class Tenant
    # [readonly]
    attr_accessor :brand_code

    attr_accessor :app_name

    attr_accessor :home_url

    attr_accessor :head_content

    attr_accessor :log_out_url

    # [readonly]
    attr_accessor :login_img_url

    # [readonly]
    attr_accessor :home_img_url

    # [readonly]
    attr_accessor :fav_icon

    # [readonly]
    attr_accessor :css_colors_file

    # [readonly]
    attr_accessor :css_file

    attr_accessor :mailing_list

    attr_accessor :html_insertions

    attr_accessor :mail_settings

    attr_accessor :signup_url

    attr_accessor :terms_url

    attr_accessor :support_email

    attr_accessor :new_user_signup_email

    attr_accessor :approve_new_users

    attr_accessor :enable_bureau_features

    attr_accessor :enable_omnipresent_users

    # [readonly]
    attr_accessor :tenant_owns_billing

    attr_accessor :billing_settings

    # [readonly] The unique id of the object
    attr_accessor :id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'brand_code' => :'brandCode',
        :'app_name' => :'appName',
        :'home_url' => :'homeUrl',
        :'head_content' => :'headContent',
        :'log_out_url' => :'logOutUrl',
        :'login_img_url' => :'loginImgUrl',
        :'home_img_url' => :'homeImgUrl',
        :'fav_icon' => :'favIcon',
        :'css_colors_file' => :'cssColorsFile',
        :'css_file' => :'cssFile',
        :'mailing_list' => :'mailingList',
        :'html_insertions' => :'htmlInsertions',
        :'mail_settings' => :'mailSettings',
        :'signup_url' => :'signupUrl',
        :'terms_url' => :'termsUrl',
        :'support_email' => :'supportEmail',
        :'new_user_signup_email' => :'newUserSignupEmail',
        :'approve_new_users' => :'approveNewUsers',
        :'enable_bureau_features' => :'enableBureauFeatures',
        :'enable_omnipresent_users' => :'enableOmnipresentUsers',
        :'tenant_owns_billing' => :'tenantOwnsBilling',
        :'billing_settings' => :'billingSettings',
        :'id' => :'id'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'brand_code' => :'Object',
        :'app_name' => :'Object',
        :'home_url' => :'Object',
        :'head_content' => :'Object',
        :'log_out_url' => :'Object',
        :'login_img_url' => :'Object',
        :'home_img_url' => :'Object',
        :'fav_icon' => :'Object',
        :'css_colors_file' => :'Object',
        :'css_file' => :'Object',
        :'mailing_list' => :'Object',
        :'html_insertions' => :'Object',
        :'mail_settings' => :'Object',
        :'signup_url' => :'Object',
        :'terms_url' => :'Object',
        :'support_email' => :'Object',
        :'new_user_signup_email' => :'Object',
        :'approve_new_users' => :'Object',
        :'enable_bureau_features' => :'Object',
        :'enable_omnipresent_users' => :'Object',
        :'tenant_owns_billing' => :'Object',
        :'billing_settings' => :'Object',
        :'id' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'brand_code',
        :'app_name',
        :'home_url',
        :'head_content',
        :'log_out_url',
        :'login_img_url',
        :'home_img_url',
        :'fav_icon',
        :'css_colors_file',
        :'css_file',
        :'html_insertions',
        :'signup_url',
        :'terms_url',
        :'support_email',
        :'new_user_signup_email',
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SwaggerClient::Tenant` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SwaggerClient::Tenant`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'brand_code')
        self.brand_code = attributes[:'brand_code']
      end

      if attributes.key?(:'app_name')
        self.app_name = attributes[:'app_name']
      end

      if attributes.key?(:'home_url')
        self.home_url = attributes[:'home_url']
      end

      if attributes.key?(:'head_content')
        self.head_content = attributes[:'head_content']
      end

      if attributes.key?(:'log_out_url')
        self.log_out_url = attributes[:'log_out_url']
      end

      if attributes.key?(:'login_img_url')
        self.login_img_url = attributes[:'login_img_url']
      end

      if attributes.key?(:'home_img_url')
        self.home_img_url = attributes[:'home_img_url']
      end

      if attributes.key?(:'fav_icon')
        self.fav_icon = attributes[:'fav_icon']
      end

      if attributes.key?(:'css_colors_file')
        self.css_colors_file = attributes[:'css_colors_file']
      end

      if attributes.key?(:'css_file')
        self.css_file = attributes[:'css_file']
      end

      if attributes.key?(:'mailing_list')
        self.mailing_list = attributes[:'mailing_list']
      end

      if attributes.key?(:'html_insertions')
        if (value = attributes[:'html_insertions']).is_a?(Array)
          self.html_insertions = value
        end
      end

      if attributes.key?(:'mail_settings')
        self.mail_settings = attributes[:'mail_settings']
      end

      if attributes.key?(:'signup_url')
        self.signup_url = attributes[:'signup_url']
      end

      if attributes.key?(:'terms_url')
        self.terms_url = attributes[:'terms_url']
      end

      if attributes.key?(:'support_email')
        self.support_email = attributes[:'support_email']
      end

      if attributes.key?(:'new_user_signup_email')
        self.new_user_signup_email = attributes[:'new_user_signup_email']
      end

      if attributes.key?(:'approve_new_users')
        self.approve_new_users = attributes[:'approve_new_users']
      end

      if attributes.key?(:'enable_bureau_features')
        self.enable_bureau_features = attributes[:'enable_bureau_features']
      end

      if attributes.key?(:'enable_omnipresent_users')
        self.enable_omnipresent_users = attributes[:'enable_omnipresent_users']
      end

      if attributes.key?(:'tenant_owns_billing')
        self.tenant_owns_billing = attributes[:'tenant_owns_billing']
      end

      if attributes.key?(:'billing_settings')
        self.billing_settings = attributes[:'billing_settings']
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
          brand_code == o.brand_code &&
          app_name == o.app_name &&
          home_url == o.home_url &&
          head_content == o.head_content &&
          log_out_url == o.log_out_url &&
          login_img_url == o.login_img_url &&
          home_img_url == o.home_img_url &&
          fav_icon == o.fav_icon &&
          css_colors_file == o.css_colors_file &&
          css_file == o.css_file &&
          mailing_list == o.mailing_list &&
          html_insertions == o.html_insertions &&
          mail_settings == o.mail_settings &&
          signup_url == o.signup_url &&
          terms_url == o.terms_url &&
          support_email == o.support_email &&
          new_user_signup_email == o.new_user_signup_email &&
          approve_new_users == o.approve_new_users &&
          enable_bureau_features == o.enable_bureau_features &&
          enable_omnipresent_users == o.enable_omnipresent_users &&
          tenant_owns_billing == o.tenant_owns_billing &&
          billing_settings == o.billing_settings &&
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
      [brand_code, app_name, home_url, head_content, log_out_url, login_img_url, home_img_url, fav_icon, css_colors_file, css_file, mailing_list, html_insertions, mail_settings, signup_url, terms_url, support_email, new_user_signup_email, approve_new_users, enable_bureau_features, enable_omnipresent_users, tenant_owns_billing, billing_settings, id].hash
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