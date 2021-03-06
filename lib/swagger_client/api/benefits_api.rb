=begin
#Staffology Payroll API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1
Contact: duane@staffology.co.uk
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.29
=end

module SwaggerClient
  class BenefitsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Benefit
    # Creates a Benefit for the Employee
    # @param employer_id 
    # @param employee_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Benefit] :body 
    # @return [nil]
    def create_benefits(employer_id, employee_id, opts = {})
      create_benefits_with_http_info(employer_id, employee_id, opts)
      nil
    end

    # Create Benefit
    # Creates a Benefit for the Employee
    # @param employer_id 
    # @param employee_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Benefit] :body 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def create_benefits_with_http_info(employer_id, employee_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BenefitsApi.create_benefits ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling BenefitsApi.create_benefits"
      end
      # verify the required parameter 'employee_id' is set
      if @api_client.config.client_side_validation && employee_id.nil?
        fail ArgumentError, "Missing the required parameter 'employee_id' when calling BenefitsApi.create_benefits"
      end
      # resource path
      local_var_path = '/employers/{employerId}/employees/{employeeId}/benefits'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'employeeId' + '}', employee_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json-patch+json', 'application/json', 'text/json', 'application/*+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BenefitsApi#create_benefits\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete Benefit
    # Deletes the Benefit specified by the Id for the Employee specified by the EmployeeId
    # @param employer_id 
    # @param employee_id 
    # @param id The Id of the Benefit you want to delete.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_benefits(employer_id, employee_id, id, opts = {})
      delete_benefits_with_http_info(employer_id, employee_id, id, opts)
      nil
    end

    # Delete Benefit
    # Deletes the Benefit specified by the Id for the Employee specified by the EmployeeId
    # @param employer_id 
    # @param employee_id 
    # @param id The Id of the Benefit you want to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_benefits_with_http_info(employer_id, employee_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BenefitsApi.delete_benefits ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling BenefitsApi.delete_benefits"
      end
      # verify the required parameter 'employee_id' is set
      if @api_client.config.client_side_validation && employee_id.nil?
        fail ArgumentError, "Missing the required parameter 'employee_id' when calling BenefitsApi.delete_benefits"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BenefitsApi.delete_benefits"
      end
      # resource path
      local_var_path = '/employers/{employerId}/employees/{employeeId}/benefits/{id}'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'employeeId' + '}', employee_id.to_s).sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: BenefitsApi#delete_benefits\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Benefit
    # Gets the Benefit specified by the Id for the Employee specified by the EmployeeId
    # @param employer_id 
    # @param employee_id 
    # @param id The Id of the Benefit you want to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [Benefit]
    def get_benefits(employer_id, employee_id, id, opts = {})
      data, _status_code, _headers = get_benefits_with_http_info(employer_id, employee_id, id, opts)
      data
    end

    # Get Benefit
    # Gets the Benefit specified by the Id for the Employee specified by the EmployeeId
    # @param employer_id 
    # @param employee_id 
    # @param id The Id of the Benefit you want to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Benefit, Integer, Hash)>] Benefit data, response status code and response headers
    def get_benefits_with_http_info(employer_id, employee_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BenefitsApi.get_benefits ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling BenefitsApi.get_benefits"
      end
      # verify the required parameter 'employee_id' is set
      if @api_client.config.client_side_validation && employee_id.nil?
        fail ArgumentError, "Missing the required parameter 'employee_id' when calling BenefitsApi.get_benefits"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BenefitsApi.get_benefits"
      end
      # resource path
      local_var_path = '/employers/{employerId}/employees/{employeeId}/benefits/{id}'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'employeeId' + '}', employee_id.to_s).sub('{' + 'id' + '}', id.to_s)

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

      return_type = opts[:return_type] || 'Benefit' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BenefitsApi#get_benefits\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List Benefits
    # Lists all Benefits for the Employee
    # @param employer_id 
    # @param employee_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<Item>]
    def index_benefits(employer_id, employee_id, opts = {})
      data, _status_code, _headers = index_benefits_with_http_info(employer_id, employee_id, opts)
      data
    end

    # List Benefits
    # Lists all Benefits for the Employee
    # @param employer_id 
    # @param employee_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Item>, Integer, Hash)>] Array<Item> data, response status code and response headers
    def index_benefits_with_http_info(employer_id, employee_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BenefitsApi.index_benefits ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling BenefitsApi.index_benefits"
      end
      # verify the required parameter 'employee_id' is set
      if @api_client.config.client_side_validation && employee_id.nil?
        fail ArgumentError, "Missing the required parameter 'employee_id' when calling BenefitsApi.index_benefits"
      end
      # resource path
      local_var_path = '/employers/{employerId}/employees/{employeeId}/benefits'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'employeeId' + '}', employee_id.to_s)

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
        @api_client.config.logger.debug "API called: BenefitsApi#index_benefits\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update Benefit
    # @param employer_id 
    # @param employee_id 
    # @param id The Id of the Benefit you want to update.
    # @param [Hash] opts the optional parameters
    # @option opts [Benefit] :body 
    # @return [Benefit]
    def update_benefits(employer_id, employee_id, id, opts = {})
      data, _status_code, _headers = update_benefits_with_http_info(employer_id, employee_id, id, opts)
      data
    end

    # Update Benefit
    # @param employer_id 
    # @param employee_id 
    # @param id The Id of the Benefit you want to update.
    # @param [Hash] opts the optional parameters
    # @option opts [Benefit] :body 
    # @return [Array<(Benefit, Integer, Hash)>] Benefit data, response status code and response headers
    def update_benefits_with_http_info(employer_id, employee_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BenefitsApi.update_benefits ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling BenefitsApi.update_benefits"
      end
      # verify the required parameter 'employee_id' is set
      if @api_client.config.client_side_validation && employee_id.nil?
        fail ArgumentError, "Missing the required parameter 'employee_id' when calling BenefitsApi.update_benefits"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BenefitsApi.update_benefits"
      end
      # resource path
      local_var_path = '/employers/{employerId}/employees/{employeeId}/benefits/{id}'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'employeeId' + '}', employee_id.to_s).sub('{' + 'id' + '}', id.to_s)

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

      return_type = opts[:return_type] || 'Benefit' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BenefitsApi#update_benefits\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
