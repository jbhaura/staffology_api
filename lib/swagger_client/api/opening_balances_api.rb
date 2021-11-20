=begin
#Staffology Payroll API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1
Contact: duane@staffology.co.uk
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.29
=end

module SwaggerClient
  class OpeningBalancesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get NicSummaries
    # Returns the NicSummaries for an Employee for a given TaxYear.\\n  If the TaxYear is the same as on their OpeningBalances then the NicSummaries will be the same as shown there.
    # @param employer_id The Id of the Employer to which the Employee belongs
    # @param employee_id The Id of the Employee for which you want to retrieve Opening Balances
    # @param tax_year The TaxYear the NicSummaries apply to
    # @param [Hash] opts the optional parameters
    # @return [Array<NicSummary>]
    def get_nic_summaries_opening_balances(employer_id, employee_id, tax_year, opts = {})
      data, _status_code, _headers = get_nic_summaries_opening_balances_with_http_info(employer_id, employee_id, tax_year, opts)
      data
    end

    # Get NicSummaries
    # Returns the NicSummaries for an Employee for a given TaxYear.\\n  If the TaxYear is the same as on their OpeningBalances then the NicSummaries will be the same as shown there.
    # @param employer_id The Id of the Employer to which the Employee belongs
    # @param employee_id The Id of the Employee for which you want to retrieve Opening Balances
    # @param tax_year The TaxYear the NicSummaries apply to
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<NicSummary>, Integer, Hash)>] Array<NicSummary> data, response status code and response headers
    def get_nic_summaries_opening_balances_with_http_info(employer_id, employee_id, tax_year, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OpeningBalancesApi.get_nic_summaries_opening_balances ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling OpeningBalancesApi.get_nic_summaries_opening_balances"
      end
      # verify the required parameter 'employee_id' is set
      if @api_client.config.client_side_validation && employee_id.nil?
        fail ArgumentError, "Missing the required parameter 'employee_id' when calling OpeningBalancesApi.get_nic_summaries_opening_balances"
      end
      # verify the required parameter 'tax_year' is set
      if @api_client.config.client_side_validation && tax_year.nil?
        fail ArgumentError, "Missing the required parameter 'tax_year' when calling OpeningBalancesApi.get_nic_summaries_opening_balances"
      end
      # resource path
      local_var_path = '/employers/{employerId}/employees/{employeeId}/openingBalances/nic/{taxYear}'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'employeeId' + '}', employee_id.to_s).sub('{' + 'taxYear' + '}', tax_year.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Array<NicSummary>' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpeningBalancesApi#get_nic_summaries_opening_balances\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Opening Balances
    # Returns the Opening Balances for an Employee
    # @param employer_id The Id of the Employer to which the Employee belongs
    # @param employee_id The Id of the Employee for which you want to retrieve Opening Balances
    # @param [Hash] opts the optional parameters
    # @return [OpeningBalances]
    def get_opening_balances(employer_id, employee_id, opts = {})
      data, _status_code, _headers = get_opening_balances_with_http_info(employer_id, employee_id, opts)
      data
    end

    # Get Opening Balances
    # Returns the Opening Balances for an Employee
    # @param employer_id The Id of the Employer to which the Employee belongs
    # @param employee_id The Id of the Employee for which you want to retrieve Opening Balances
    # @param [Hash] opts the optional parameters
    # @return [Array<(OpeningBalances, Integer, Hash)>] OpeningBalances data, response status code and response headers
    def get_opening_balances_with_http_info(employer_id, employee_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OpeningBalancesApi.get_opening_balances ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling OpeningBalancesApi.get_opening_balances"
      end
      # verify the required parameter 'employee_id' is set
      if @api_client.config.client_side_validation && employee_id.nil?
        fail ArgumentError, "Missing the required parameter 'employee_id' when calling OpeningBalancesApi.get_opening_balances"
      end
      # resource path
      local_var_path = '/employers/{employerId}/employees/{employeeId}/openingBalances'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'employeeId' + '}', employee_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'OpeningBalances' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpeningBalancesApi#get_opening_balances\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update NicSummaries
    # Updates the NicSummaries for an Employee for a given TaxYear.\\n  If the TaxYear is the same as on their OpeningBalances then the NicSummaries there will also be updated.
    # @param employer_id The Id of the Employer to which the Employee belongs
    # @param employee_id The Id of the Employee for which you want to retrieve Opening Balances
    # @param tax_year The TaxYear the NicSummaries apply to
    # @param [Hash] opts the optional parameters
    # @option opts [Array<NicSummary>] :body 
    # @return [Array<NicSummary>]
    def update_nic_summaries_opening_balances(employer_id, employee_id, tax_year, opts = {})
      data, _status_code, _headers = update_nic_summaries_opening_balances_with_http_info(employer_id, employee_id, tax_year, opts)
      data
    end

    # Update NicSummaries
    # Updates the NicSummaries for an Employee for a given TaxYear.\\n  If the TaxYear is the same as on their OpeningBalances then the NicSummaries there will also be updated.
    # @param employer_id The Id of the Employer to which the Employee belongs
    # @param employee_id The Id of the Employee for which you want to retrieve Opening Balances
    # @param tax_year The TaxYear the NicSummaries apply to
    # @param [Hash] opts the optional parameters
    # @option opts [Array<NicSummary>] :body 
    # @return [Array<(Array<NicSummary>, Integer, Hash)>] Array<NicSummary> data, response status code and response headers
    def update_nic_summaries_opening_balances_with_http_info(employer_id, employee_id, tax_year, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OpeningBalancesApi.update_nic_summaries_opening_balances ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling OpeningBalancesApi.update_nic_summaries_opening_balances"
      end
      # verify the required parameter 'employee_id' is set
      if @api_client.config.client_side_validation && employee_id.nil?
        fail ArgumentError, "Missing the required parameter 'employee_id' when calling OpeningBalancesApi.update_nic_summaries_opening_balances"
      end
      # verify the required parameter 'tax_year' is set
      if @api_client.config.client_side_validation && tax_year.nil?
        fail ArgumentError, "Missing the required parameter 'tax_year' when calling OpeningBalancesApi.update_nic_summaries_opening_balances"
      end
      # resource path
      local_var_path = '/employers/{employerId}/employees/{employeeId}/openingBalances/nic/{taxYear}'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'employeeId' + '}', employee_id.to_s).sub('{' + 'taxYear' + '}', tax_year.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json-patch+json', 'application/json', 'text/json', 'application/*+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      return_type = opts[:return_type] || 'Array<NicSummary>' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpeningBalancesApi#update_nic_summaries_opening_balances\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update Opening Balances
    # Updates the Opening Balances for an Employee.
    # @param employer_id The Id of the Employer to which the Employee belongs
    # @param employee_id The Id of the Employee for which you want to update Opening Balances
    # @param [Hash] opts the optional parameters
    # @option opts [OpeningBalances] :body 
    # @return [OpeningBalances]
    def update_opening_balances(employer_id, employee_id, opts = {})
      data, _status_code, _headers = update_opening_balances_with_http_info(employer_id, employee_id, opts)
      data
    end

    # Update Opening Balances
    # Updates the Opening Balances for an Employee.
    # @param employer_id The Id of the Employer to which the Employee belongs
    # @param employee_id The Id of the Employee for which you want to update Opening Balances
    # @param [Hash] opts the optional parameters
    # @option opts [OpeningBalances] :body 
    # @return [Array<(OpeningBalances, Integer, Hash)>] OpeningBalances data, response status code and response headers
    def update_opening_balances_with_http_info(employer_id, employee_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OpeningBalancesApi.update_opening_balances ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling OpeningBalancesApi.update_opening_balances"
      end
      # verify the required parameter 'employee_id' is set
      if @api_client.config.client_side_validation && employee_id.nil?
        fail ArgumentError, "Missing the required parameter 'employee_id' when calling OpeningBalancesApi.update_opening_balances"
      end
      # resource path
      local_var_path = '/employers/{employerId}/employees/{employeeId}/openingBalances'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'employeeId' + '}', employee_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json-patch+json', 'application/json', 'text/json', 'application/*+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      return_type = opts[:return_type] || 'OpeningBalances' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpeningBalancesApi#update_opening_balances\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update P45 Value
    # Updates the P45 Values on the Opening Balances for an Employee.\\n  This would ideally be done when the Opening Balances are updated but if payruns have already been started for the employee then Opening Balances can't be updated - hence this API call just to update the P45 values.\\n  There must be a currently open PayRun for the employee.\\n  Only the PreviousEmployerGross and PreviousEmployerTax properties of the submitted OpeningBalances model are updated.
    # @param employer_id The Id of the Employer to which the Employee belongs
    # @param employee_id The Id of the Employee for which you want to update P45 figures
    # @param [Hash] opts the optional parameters
    # @option opts [OpeningBalances] :body 
    # @return [OpeningBalances]
    def update_p45_opening_balances(employer_id, employee_id, opts = {})
      data, _status_code, _headers = update_p45_opening_balances_with_http_info(employer_id, employee_id, opts)
      data
    end

    # Update P45 Value
    # Updates the P45 Values on the Opening Balances for an Employee.\\n  This would ideally be done when the Opening Balances are updated but if payruns have already been started for the employee then Opening Balances can&#x27;t be updated - hence this API call just to update the P45 values.\\n  There must be a currently open PayRun for the employee.\\n  Only the PreviousEmployerGross and PreviousEmployerTax properties of the submitted OpeningBalances model are updated.
    # @param employer_id The Id of the Employer to which the Employee belongs
    # @param employee_id The Id of the Employee for which you want to update P45 figures
    # @param [Hash] opts the optional parameters
    # @option opts [OpeningBalances] :body 
    # @return [Array<(OpeningBalances, Integer, Hash)>] OpeningBalances data, response status code and response headers
    def update_p45_opening_balances_with_http_info(employer_id, employee_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OpeningBalancesApi.update_p45_opening_balances ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling OpeningBalancesApi.update_p45_opening_balances"
      end
      # verify the required parameter 'employee_id' is set
      if @api_client.config.client_side_validation && employee_id.nil?
        fail ArgumentError, "Missing the required parameter 'employee_id' when calling OpeningBalancesApi.update_p45_opening_balances"
      end
      # resource path
      local_var_path = '/employers/{employerId}/employees/{employeeId}/openingBalances/p45'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'employeeId' + '}', employee_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json-patch+json', 'application/json', 'text/json', 'application/*+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      return_type = opts[:return_type] || 'OpeningBalances' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpeningBalancesApi#update_p45_opening_balances\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update Termination Pay
    # Updates the Termination Pay value on the Opening Balances for an Employee.\\n  This would ideally be done when the Opening Balances are updated but if payruns have already been started for the employee then Opening Balances can't be updated - hence this API call just to update the Termination Pay value.\\n  Only the TerminationPayments property of the submitted OpeningBalances model is updated.
    # @param employer_id The Id of the Employer to which the Employee belongs
    # @param employee_id The Id of the Employee for which you want to update Termination Payments
    # @param [Hash] opts the optional parameters
    # @option opts [OpeningBalances] :body 
    # @return [OpeningBalances]
    def update_termination_payments_opening_balances(employer_id, employee_id, opts = {})
      data, _status_code, _headers = update_termination_payments_opening_balances_with_http_info(employer_id, employee_id, opts)
      data
    end

    # Update Termination Pay
    # Updates the Termination Pay value on the Opening Balances for an Employee.\\n  This would ideally be done when the Opening Balances are updated but if payruns have already been started for the employee then Opening Balances can&#x27;t be updated - hence this API call just to update the Termination Pay value.\\n  Only the TerminationPayments property of the submitted OpeningBalances model is updated.
    # @param employer_id The Id of the Employer to which the Employee belongs
    # @param employee_id The Id of the Employee for which you want to update Termination Payments
    # @param [Hash] opts the optional parameters
    # @option opts [OpeningBalances] :body 
    # @return [Array<(OpeningBalances, Integer, Hash)>] OpeningBalances data, response status code and response headers
    def update_termination_payments_opening_balances_with_http_info(employer_id, employee_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OpeningBalancesApi.update_termination_payments_opening_balances ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling OpeningBalancesApi.update_termination_payments_opening_balances"
      end
      # verify the required parameter 'employee_id' is set
      if @api_client.config.client_side_validation && employee_id.nil?
        fail ArgumentError, "Missing the required parameter 'employee_id' when calling OpeningBalancesApi.update_termination_payments_opening_balances"
      end
      # resource path
      local_var_path = '/employers/{employerId}/employees/{employeeId}/openingBalances/terminationpayments'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'employeeId' + '}', employee_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json-patch+json', 'application/json', 'text/json', 'application/*+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      return_type = opts[:return_type] || 'OpeningBalances' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpeningBalancesApi#update_termination_payments_opening_balances\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end