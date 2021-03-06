=begin
#Staffology Payroll API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1
Contact: duane@staffology.co.uk
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.29
=end

module SwaggerClient
  class EpsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create EPS
    # Creates a new Employer Payment Summary
    # @param employer_id 
    # @param tax_year 
    # @param [Hash] opts the optional parameters
    # @option opts [Eps] :body 
    # @return [Eps]
    def create_eps(employer_id, tax_year, opts = {})
      data, _status_code, _headers = create_eps_with_http_info(employer_id, tax_year, opts)
      data
    end

    # Create EPS
    # Creates a new Employer Payment Summary
    # @param employer_id 
    # @param tax_year 
    # @param [Hash] opts the optional parameters
    # @option opts [Eps] :body 
    # @return [Array<(Eps, Integer, Hash)>] Eps data, response status code and response headers
    def create_eps_with_http_info(employer_id, tax_year, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EpsApi.create_eps ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling EpsApi.create_eps"
      end
      # verify the required parameter 'tax_year' is set
      if @api_client.config.client_side_validation && tax_year.nil?
        fail ArgumentError, "Missing the required parameter 'tax_year' when calling EpsApi.create_eps"
      end
      # resource path
      local_var_path = '/employers/{employerId}/rti/eps/{taxYear}'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'taxYear' + '}', tax_year.to_s)

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

      return_type = opts[:return_type] || 'Eps' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EpsApi#create_eps\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete Eps
    # Deletes the Eps.
    # @param employer_id 
    # @param tax_year 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_eps(employer_id, tax_year, id, opts = {})
      delete_eps_with_http_info(employer_id, tax_year, id, opts)
      nil
    end

    # Delete Eps
    # Deletes the Eps.
    # @param employer_id 
    # @param tax_year 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_eps_with_http_info(employer_id, tax_year, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EpsApi.delete_eps ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling EpsApi.delete_eps"
      end
      # verify the required parameter 'tax_year' is set
      if @api_client.config.client_side_validation && tax_year.nil?
        fail ArgumentError, "Missing the required parameter 'tax_year' when calling EpsApi.delete_eps"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling EpsApi.delete_eps"
      end
      # resource path
      local_var_path = '/employers/{employerId}/rti/eps/{taxYear}/{id}'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'taxYear' + '}', tax_year.to_s).sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: EpsApi#delete_eps\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get EPS
    # Retrieves the Employer Payment Summary specified
    # @param employer_id 
    # @param tax_year 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Eps]
    def get_eps(employer_id, tax_year, id, opts = {})
      data, _status_code, _headers = get_eps_with_http_info(employer_id, tax_year, id, opts)
      data
    end

    # Get EPS
    # Retrieves the Employer Payment Summary specified
    # @param employer_id 
    # @param tax_year 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Eps, Integer, Hash)>] Eps data, response status code and response headers
    def get_eps_with_http_info(employer_id, tax_year, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EpsApi.get_eps ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling EpsApi.get_eps"
      end
      # verify the required parameter 'tax_year' is set
      if @api_client.config.client_side_validation && tax_year.nil?
        fail ArgumentError, "Missing the required parameter 'tax_year' when calling EpsApi.get_eps"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling EpsApi.get_eps"
      end
      # resource path
      local_var_path = '/employers/{employerId}/rti/eps/{taxYear}/{id}'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'taxYear' + '}', tax_year.to_s).sub('{' + 'id' + '}', id.to_s)

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

      return_type = opts[:return_type] || 'Eps' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EpsApi#get_eps\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List EPS
    # Returns all Employment Payment Summaries for the given tax year.
    # @param employer_id 
    # @param tax_year 
    # @param [Hash] opts the optional parameters
    # @return [Array<Item>]
    def list_eps(employer_id, tax_year, opts = {})
      data, _status_code, _headers = list_eps_with_http_info(employer_id, tax_year, opts)
      data
    end

    # List EPS
    # Returns all Employment Payment Summaries for the given tax year.
    # @param employer_id 
    # @param tax_year 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Item>, Integer, Hash)>] Array<Item> data, response status code and response headers
    def list_eps_with_http_info(employer_id, tax_year, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EpsApi.list_eps ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling EpsApi.list_eps"
      end
      # verify the required parameter 'tax_year' is set
      if @api_client.config.client_side_validation && tax_year.nil?
        fail ArgumentError, "Missing the required parameter 'tax_year' when calling EpsApi.list_eps"
      end
      # resource path
      local_var_path = '/employers/{employerId}/rti/eps/{taxYear}'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'taxYear' + '}', tax_year.to_s)

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
        @api_client.config.logger.debug "API called: EpsApi#list_eps\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Mark as Sent
    # Marks an Employer Payment Summary as having been sent to HMRC and accepted by them\\nYou would only use this method if the EPS had been submitted via an external system.\\nIt will automatically be updated as Sent and/or Accepted if it's submitted via this API.
    # @param employer_id 
    # @param tax_year 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Eps]
    def mark_as_accepted_eps(employer_id, tax_year, id, opts = {})
      data, _status_code, _headers = mark_as_accepted_eps_with_http_info(employer_id, tax_year, id, opts)
      data
    end

    # Mark as Sent
    # Marks an Employer Payment Summary as having been sent to HMRC and accepted by them\\nYou would only use this method if the EPS had been submitted via an external system.\\nIt will automatically be updated as Sent and/or Accepted if it&#x27;s submitted via this API.
    # @param employer_id 
    # @param tax_year 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Eps, Integer, Hash)>] Eps data, response status code and response headers
    def mark_as_accepted_eps_with_http_info(employer_id, tax_year, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EpsApi.mark_as_accepted_eps ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling EpsApi.mark_as_accepted_eps"
      end
      # verify the required parameter 'tax_year' is set
      if @api_client.config.client_side_validation && tax_year.nil?
        fail ArgumentError, "Missing the required parameter 'tax_year' when calling EpsApi.mark_as_accepted_eps"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling EpsApi.mark_as_accepted_eps"
      end
      # resource path
      local_var_path = '/employers/{employerId}/rti/eps/{taxYear}/{id}/markasaccepted'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'taxYear' + '}', tax_year.to_s).sub('{' + 'id' + '}', id.to_s)

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

      return_type = opts[:return_type] || 'Eps' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EpsApi#mark_as_accepted_eps\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Recoverable Amounts
    # Get all recoverable amounts (SMP, etc) for a given tax year, up to the given tax month
    # @param employer_id 
    # @param tax_year 
    # @param tax_month 
    # @param [Hash] opts the optional parameters
    # @return [RecoverableAmounts]
    def recoverable_amounts_eps(employer_id, tax_year, tax_month, opts = {})
      data, _status_code, _headers = recoverable_amounts_eps_with_http_info(employer_id, tax_year, tax_month, opts)
      data
    end

    # Recoverable Amounts
    # Get all recoverable amounts (SMP, etc) for a given tax year, up to the given tax month
    # @param employer_id 
    # @param tax_year 
    # @param tax_month 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RecoverableAmounts, Integer, Hash)>] RecoverableAmounts data, response status code and response headers
    def recoverable_amounts_eps_with_http_info(employer_id, tax_year, tax_month, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EpsApi.recoverable_amounts_eps ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling EpsApi.recoverable_amounts_eps"
      end
      # verify the required parameter 'tax_year' is set
      if @api_client.config.client_side_validation && tax_year.nil?
        fail ArgumentError, "Missing the required parameter 'tax_year' when calling EpsApi.recoverable_amounts_eps"
      end
      # verify the required parameter 'tax_month' is set
      if @api_client.config.client_side_validation && tax_month.nil?
        fail ArgumentError, "Missing the required parameter 'tax_month' when calling EpsApi.recoverable_amounts_eps"
      end
      # resource path
      local_var_path = '/employers/{employerId}/rti/eps/{taxYear}/{taxMonth}/recoverableamounts'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'taxYear' + '}', tax_year.to_s).sub('{' + 'taxMonth' + '}', tax_month.to_s)

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

      return_type = opts[:return_type] || 'RecoverableAmounts' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EpsApi#recoverable_amounts_eps\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # EPS Requiring Attention
    # Returns all Employer Payment Summaries that have a Submission Status of NotSubmitted or ErrorResponse
    # @param employer_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<Item>]
    def requiring_attention_eps(employer_id, opts = {})
      data, _status_code, _headers = requiring_attention_eps_with_http_info(employer_id, opts)
      data
    end

    # EPS Requiring Attention
    # Returns all Employer Payment Summaries that have a Submission Status of NotSubmitted or ErrorResponse
    # @param employer_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Item>, Integer, Hash)>] Array<Item> data, response status code and response headers
    def requiring_attention_eps_with_http_info(employer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EpsApi.requiring_attention_eps ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling EpsApi.requiring_attention_eps"
      end
      # resource path
      local_var_path = '/employers/{employerId}/rti/eps/requiringattention'.sub('{' + 'employerId' + '}', employer_id.to_s)

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
        @api_client.config.logger.debug "API called: EpsApi#requiring_attention_eps\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Submit EPS
    # Submits an existing Employment Payment Summary to HMRC.
    # @param employer_id 
    # @param tax_year 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Eps]
    def submit_eps(employer_id, tax_year, id, opts = {})
      data, _status_code, _headers = submit_eps_with_http_info(employer_id, tax_year, id, opts)
      data
    end

    # Submit EPS
    # Submits an existing Employment Payment Summary to HMRC.
    # @param employer_id 
    # @param tax_year 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Eps, Integer, Hash)>] Eps data, response status code and response headers
    def submit_eps_with_http_info(employer_id, tax_year, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EpsApi.submit_eps ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling EpsApi.submit_eps"
      end
      # verify the required parameter 'tax_year' is set
      if @api_client.config.client_side_validation && tax_year.nil?
        fail ArgumentError, "Missing the required parameter 'tax_year' when calling EpsApi.submit_eps"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling EpsApi.submit_eps"
      end
      # resource path
      local_var_path = '/employers/{employerId}/rti/eps/{taxYear}/{id}/submit'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'taxYear' + '}', tax_year.to_s).sub('{' + 'id' + '}', id.to_s)

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

      return_type = opts[:return_type] || 'Eps' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EpsApi#submit_eps\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update EPS
    # Updates an existing Employment Payment Summary.
    # @param employer_id 
    # @param tax_year 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [Eps] :body 
    # @return [Eps]
    def update_eps(employer_id, tax_year, id, opts = {})
      data, _status_code, _headers = update_eps_with_http_info(employer_id, tax_year, id, opts)
      data
    end

    # Update EPS
    # Updates an existing Employment Payment Summary.
    # @param employer_id 
    # @param tax_year 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [Eps] :body 
    # @return [Array<(Eps, Integer, Hash)>] Eps data, response status code and response headers
    def update_eps_with_http_info(employer_id, tax_year, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EpsApi.update_eps ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling EpsApi.update_eps"
      end
      # verify the required parameter 'tax_year' is set
      if @api_client.config.client_side_validation && tax_year.nil?
        fail ArgumentError, "Missing the required parameter 'tax_year' when calling EpsApi.update_eps"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling EpsApi.update_eps"
      end
      # resource path
      local_var_path = '/employers/{employerId}/rti/eps/{taxYear}/{id}'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'taxYear' + '}', tax_year.to_s).sub('{' + 'id' + '}', id.to_s)

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

      return_type = opts[:return_type] || 'Eps' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EpsApi#update_eps\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
