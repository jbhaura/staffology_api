=begin
#Staffology Payroll API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1
Contact: duane@staffology.co.uk
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.29
=end

module SwaggerClient
  class PayCodeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create PayCode
    # Creates a new PayCode for the Employer.
    # @param employer_id 
    # @param [Hash] opts the optional parameters
    # @option opts [PayCode] :body 
    # @return [PayCode]
    def create_pay_code(employer_id, opts = {})
      data, _status_code, _headers = create_pay_code_with_http_info(employer_id, opts)
      data
    end

    # Create PayCode
    # Creates a new PayCode for the Employer.
    # @param employer_id 
    # @param [Hash] opts the optional parameters
    # @option opts [PayCode] :body 
    # @return [Array<(PayCode, Integer, Hash)>] PayCode data, response status code and response headers
    def create_pay_code_with_http_info(employer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayCodeApi.create_pay_code ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling PayCodeApi.create_pay_code"
      end
      # resource path
      local_var_path = '/employers/{employerId}/paycodes'.sub('{' + 'employerId' + '}', employer_id.to_s)

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

      return_type = opts[:return_type] || 'PayCode' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayCodeApi#create_pay_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete PayCode
    # Deletes the specified PayCode.
    # @param employer_id 
    # @param code 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_pay_code(employer_id, code, opts = {})
      delete_pay_code_with_http_info(employer_id, code, opts)
      nil
    end

    # Delete PayCode
    # Deletes the specified PayCode.
    # @param employer_id 
    # @param code 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_pay_code_with_http_info(employer_id, code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayCodeApi.delete_pay_code ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling PayCodeApi.delete_pay_code"
      end
      # verify the required parameter 'code' is set
      if @api_client.config.client_side_validation && code.nil?
        fail ArgumentError, "Missing the required parameter 'code' when calling PayCodeApi.delete_pay_code"
      end
      # resource path
      local_var_path = '/employers/{employerId}/paycodes/{code}'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'code' + '}', code.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayCodeApi#delete_pay_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get PayCode
    # Gets the PayCode specified.
    # @param employer_id The Id of the Employer to which the Pay Code belongs.
    # @param code The code of the Pay Code you want to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [PayCode]
    def get_pay_code(employer_id, code, opts = {})
      data, _status_code, _headers = get_pay_code_with_http_info(employer_id, code, opts)
      data
    end

    # Get PayCode
    # Gets the PayCode specified.
    # @param employer_id The Id of the Employer to which the Pay Code belongs.
    # @param code The code of the Pay Code you want to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PayCode, Integer, Hash)>] PayCode data, response status code and response headers
    def get_pay_code_with_http_info(employer_id, code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayCodeApi.get_pay_code ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling PayCodeApi.get_pay_code"
      end
      # verify the required parameter 'code' is set
      if @api_client.config.client_side_validation && code.nil?
        fail ArgumentError, "Missing the required parameter 'code' when calling PayCodeApi.get_pay_code"
      end
      # resource path
      local_var_path = '/employers/{employerId}/paycodes/{code}'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'code' + '}', code.to_s)

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

      return_type = opts[:return_type] || 'PayCode' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayCodeApi#get_pay_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List PayCodes
    # Lists all PayCodes for the Employer specified.
    # @param employer_id The Id of the Employer for which you want to list Pay Codes
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :verbose If provided and set to true then full details of all Pay Codes will be returned insead of just a summary (default to false)
    # @return [Array<PayCode>]
    def index_pay_code(employer_id, opts = {})
      data, _status_code, _headers = index_pay_code_with_http_info(employer_id, opts)
      data
    end

    # List PayCodes
    # Lists all PayCodes for the Employer specified.
    # @param employer_id The Id of the Employer for which you want to list Pay Codes
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :verbose If provided and set to true then full details of all Pay Codes will be returned insead of just a summary
    # @return [Array<(Array<PayCode>, Integer, Hash)>] Array<PayCode> data, response status code and response headers
    def index_pay_code_with_http_info(employer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayCodeApi.index_pay_code ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling PayCodeApi.index_pay_code"
      end
      # resource path
      local_var_path = '/employers/{employerId}/paycodes'.sub('{' + 'employerId' + '}', employer_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'verbose'] = opts[:'verbose'] if !opts[:'verbose'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Array<PayCode>' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayCodeApi#index_pay_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Nominal Code Mappings
    # Returns the list of mappings of PayCodes to NominalCodes
    # @param employer_id The Id of the Employer for which you want to get the mapping
    # @param [Hash] opts the optional parameters
    # @return [Array<NominalCodeMapping>]
    def nominal_code_mappings_pay_code(employer_id, opts = {})
      data, _status_code, _headers = nominal_code_mappings_pay_code_with_http_info(employer_id, opts)
      data
    end

    # Get Nominal Code Mappings
    # Returns the list of mappings of PayCodes to NominalCodes
    # @param employer_id The Id of the Employer for which you want to get the mapping
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<NominalCodeMapping>, Integer, Hash)>] Array<NominalCodeMapping> data, response status code and response headers
    def nominal_code_mappings_pay_code_with_http_info(employer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayCodeApi.nominal_code_mappings_pay_code ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling PayCodeApi.nominal_code_mappings_pay_code"
      end
      # resource path
      local_var_path = '/employers/{employerId}/paycodes/nominalcodes'.sub('{' + 'employerId' + '}', employer_id.to_s)

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

      return_type = opts[:return_type] || 'Array<NominalCodeMapping>' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayCodeApi#nominal_code_mappings_pay_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates Nominal Code Mappings
    # Updates the list of mappings of PayCodes to NominalCodes
    # @param employer_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<NominalCodeMapping>] :body 
    # @return [Array<NominalCodeMapping>]
    def update_nominal_code_mappings_pay_code(employer_id, opts = {})
      data, _status_code, _headers = update_nominal_code_mappings_pay_code_with_http_info(employer_id, opts)
      data
    end

    # Updates Nominal Code Mappings
    # Updates the list of mappings of PayCodes to NominalCodes
    # @param employer_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<NominalCodeMapping>] :body 
    # @return [Array<(Array<NominalCodeMapping>, Integer, Hash)>] Array<NominalCodeMapping> data, response status code and response headers
    def update_nominal_code_mappings_pay_code_with_http_info(employer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayCodeApi.update_nominal_code_mappings_pay_code ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling PayCodeApi.update_nominal_code_mappings_pay_code"
      end
      # resource path
      local_var_path = '/employers/{employerId}/paycodes/nominalcodes'.sub('{' + 'employerId' + '}', employer_id.to_s)

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

      return_type = opts[:return_type] || 'Array<NominalCodeMapping>' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayCodeApi#update_nominal_code_mappings_pay_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update PayCode
    # Updates the details of an existing PayCode.
    # @param employer_id 
    # @param code 
    # @param [Hash] opts the optional parameters
    # @option opts [PayCode] :body 
    # @return [PayCode]
    def update_pay_code(employer_id, code, opts = {})
      data, _status_code, _headers = update_pay_code_with_http_info(employer_id, code, opts)
      data
    end

    # Update PayCode
    # Updates the details of an existing PayCode.
    # @param employer_id 
    # @param code 
    # @param [Hash] opts the optional parameters
    # @option opts [PayCode] :body 
    # @return [Array<(PayCode, Integer, Hash)>] PayCode data, response status code and response headers
    def update_pay_code_with_http_info(employer_id, code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayCodeApi.update_pay_code ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling PayCodeApi.update_pay_code"
      end
      # verify the required parameter 'code' is set
      if @api_client.config.client_side_validation && code.nil?
        fail ArgumentError, "Missing the required parameter 'code' when calling PayCodeApi.update_pay_code"
      end
      # resource path
      local_var_path = '/employers/{employerId}/paycodes/{code}'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'code' + '}', code.to_s)

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

      return_type = opts[:return_type] || 'PayCode' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayCodeApi#update_pay_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
