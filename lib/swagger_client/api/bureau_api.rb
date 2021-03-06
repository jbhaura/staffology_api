=begin
#Staffology Payroll API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1
Contact: duane@staffology.co.uk
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.29
=end

module SwaggerClient
  class BureauApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List Employers
    # Returns a list of Employers.\\n  This differs from the main Employer list end point in that the metadata included is more relevant to Bureau activities  It also gives you the ability to filter based on the allocated Processor.\\n  Note: an entry is returned for each PaySchedule. So if the employer has both a Monthly and a Weekly PaySchedule then they'll appear twice
    # @param [Hash] opts the optional parameters
    # @option opts [String] :processor The Id of the Processor (User) you want to restrict the list to.
    # @return [Array<Item>]
    def employers_bureau(opts = {})
      data, _status_code, _headers = employers_bureau_with_http_info(opts)
      data
    end

    # List Employers
    # Returns a list of Employers.\\n  This differs from the main Employer list end point in that the metadata included is more relevant to Bureau activities  It also gives you the ability to filter based on the allocated Processor.\\n  Note: an entry is returned for each PaySchedule. So if the employer has both a Monthly and a Weekly PaySchedule then they&#x27;ll appear twice
    # @param [Hash] opts the optional parameters
    # @option opts [String] :processor The Id of the Processor (User) you want to restrict the list to.
    # @return [Array<(Array<Item>, Integer, Hash)>] Array<Item> data, response status code and response headers
    def employers_bureau_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BureauApi.employers_bureau ...'
      end
      # resource path
      local_var_path = '/bureau/employers'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'processor'] = opts[:'processor'] if !opts[:'processor'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Array<Item>' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BureauApi#employers_bureau\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get BureauSettings ReportPack
    # If a ReportPack is specified in the BureauSettings then it is returned, otherwise an empty ReportPAck is returned
    # @param employer_id 
    # @param [Hash] opts the optional parameters
    # @return [ReportPack]
    def get_report_pack_bureau(employer_id, opts = {})
      data, _status_code, _headers = get_report_pack_bureau_with_http_info(employer_id, opts)
      data
    end

    # Get BureauSettings ReportPack
    # If a ReportPack is specified in the BureauSettings then it is returned, otherwise an empty ReportPAck is returned
    # @param employer_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ReportPack, Integer, Hash)>] ReportPack data, response status code and response headers
    def get_report_pack_bureau_with_http_info(employer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BureauApi.get_report_pack_bureau ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling BureauApi.get_report_pack_bureau"
      end
      # resource path
      local_var_path = '/employers/{employerId}/bureau/settings/reportpack'.sub('{' + 'employerId' + '}', employer_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'ReportPack' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BureauApi#get_report_pack_bureau\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get BureauSettings
    # Returns the BureauSettings for the Employer
    # @param employer_id 
    # @param [Hash] opts the optional parameters
    # @return [BureauSettings]
    def get_settings_bureau(employer_id, opts = {})
      data, _status_code, _headers = get_settings_bureau_with_http_info(employer_id, opts)
      data
    end

    # Get BureauSettings
    # Returns the BureauSettings for the Employer
    # @param employer_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BureauSettings, Integer, Hash)>] BureauSettings data, response status code and response headers
    def get_settings_bureau_with_http_info(employer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BureauApi.get_settings_bureau ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling BureauApi.get_settings_bureau"
      end
      # resource path
      local_var_path = '/employers/{employerId}/bureau/settings'.sub('{' + 'employerId' + '}', employer_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'BureauSettings' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BureauApi#get_settings_bureau\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List Allocated Processors
    # Returns a list of Users that have one or more Employers allocated to them as the Processor
    # @param [Hash] opts the optional parameters
    # @return [Array<Item>]
    def processor_users_bureau(opts = {})
      data, _status_code, _headers = processor_users_bureau_with_http_info(opts)
      data
    end

    # List Allocated Processors
    # Returns a list of Users that have one or more Employers allocated to them as the Processor
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Item>, Integer, Hash)>] Array<Item> data, response status code and response headers
    def processor_users_bureau_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BureauApi.processor_users_bureau ...'
      end
      # resource path
      local_var_path = '/bureau/processors'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Array<Item>' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BureauApi#processor_users_bureau\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update BureauSettings
    # Updates the BureaSettings for the Employer
    # @param employer_id 
    # @param [Hash] opts the optional parameters
    # @option opts [BureauSettings] :body 
    # @return [BureauSettings]
    def update_settings_bureau(employer_id, opts = {})
      data, _status_code, _headers = update_settings_bureau_with_http_info(employer_id, opts)
      data
    end

    # Update BureauSettings
    # Updates the BureaSettings for the Employer
    # @param employer_id 
    # @param [Hash] opts the optional parameters
    # @option opts [BureauSettings] :body 
    # @return [Array<(BureauSettings, Integer, Hash)>] BureauSettings data, response status code and response headers
    def update_settings_bureau_with_http_info(employer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BureauApi.update_settings_bureau ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling BureauApi.update_settings_bureau"
      end
      # resource path
      local_var_path = '/employers/{employerId}/bureau/settings'.sub('{' + 'employerId' + '}', employer_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json-patch+json', 'application/json', 'text/json', 'application/*+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      return_type = opts[:return_type] || 'BureauSettings' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BureauApi#update_settings_bureau\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
