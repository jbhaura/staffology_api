=begin
#Staffology Payroll API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1
Contact: duane@staffology.co.uk
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.29
=end

module SwaggerClient
  class ReportPackApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create ReportPack
    # Creates a new ReportPack for the Employer.
    # @param employer_id 
    # @param [Hash] opts the optional parameters
    # @option opts [ReportPack] :body 
    # @return [ReportPack]
    def create_report_pack(employer_id, opts = {})
      data, _status_code, _headers = create_report_pack_with_http_info(employer_id, opts)
      data
    end

    # Create ReportPack
    # Creates a new ReportPack for the Employer.
    # @param employer_id 
    # @param [Hash] opts the optional parameters
    # @option opts [ReportPack] :body 
    # @return [Array<(ReportPack, Integer, Hash)>] ReportPack data, response status code and response headers
    def create_report_pack_with_http_info(employer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportPackApi.create_report_pack ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling ReportPackApi.create_report_pack"
      end
      # resource path
      local_var_path = '/employers/{employerId}/reports/packs'.sub('{' + 'employerId' + '}', employer_id.to_s)

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

      return_type = opts[:return_type] || 'ReportPack' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportPackApi#create_report_pack\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete ReportPack
    # Deletes the specified ReportPack.
    # @param employer_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_report_pack(employer_id, id, opts = {})
      delete_report_pack_with_http_info(employer_id, id, opts)
      nil
    end

    # Delete ReportPack
    # Deletes the specified ReportPack.
    # @param employer_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_report_pack_with_http_info(employer_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportPackApi.delete_report_pack ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling ReportPackApi.delete_report_pack"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ReportPackApi.delete_report_pack"
      end
      # resource path
      local_var_path = '/employers/{employerId}/reports/packs/{id}'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: ReportPackApi#delete_report_pack\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get ReportPack
    # Gets the ReportPack specified.
    # @param employer_id The Id of the Employer to which the ReportPack belongs.
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [ReportPack]
    def get_report_pack(employer_id, id, opts = {})
      data, _status_code, _headers = get_report_pack_with_http_info(employer_id, id, opts)
      data
    end

    # Get ReportPack
    # Gets the ReportPack specified.
    # @param employer_id The Id of the Employer to which the ReportPack belongs.
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ReportPack, Integer, Hash)>] ReportPack data, response status code and response headers
    def get_report_pack_with_http_info(employer_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportPackApi.get_report_pack ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling ReportPackApi.get_report_pack"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ReportPackApi.get_report_pack"
      end
      # resource path
      local_var_path = '/employers/{employerId}/reports/packs/{id}'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: ReportPackApi#get_report_pack\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List ReportPacks
    # Lists all ReportPacks for an Employer.
    # @param employer_id The Id of the Employer for which you want to list ReportPacks
    # @param [Hash] opts the optional parameters
    # @return [Array<Item>]
    def index_report_pack(employer_id, opts = {})
      data, _status_code, _headers = index_report_pack_with_http_info(employer_id, opts)
      data
    end

    # List ReportPacks
    # Lists all ReportPacks for an Employer.
    # @param employer_id The Id of the Employer for which you want to list ReportPacks
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Item>, Integer, Hash)>] Array<Item> data, response status code and response headers
    def index_report_pack_with_http_info(employer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportPackApi.index_report_pack ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling ReportPackApi.index_report_pack"
      end
      # resource path
      local_var_path = '/employers/{employerId}/reports/packs'.sub('{' + 'employerId' + '}', employer_id.to_s)

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
        @api_client.config.logger.debug "API called: ReportPackApi#index_report_pack\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update ReportPack
    # Updates a ReportPack for the Employer.
    # @param employer_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [ReportPack] :body 
    # @return [ReportPack]
    def update_report_pack(employer_id, id, opts = {})
      data, _status_code, _headers = update_report_pack_with_http_info(employer_id, id, opts)
      data
    end

    # Update ReportPack
    # Updates a ReportPack for the Employer.
    # @param employer_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [ReportPack] :body 
    # @return [Array<(ReportPack, Integer, Hash)>] ReportPack data, response status code and response headers
    def update_report_pack_with_http_info(employer_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportPackApi.update_report_pack ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling ReportPackApi.update_report_pack"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ReportPackApi.update_report_pack"
      end
      # resource path
      local_var_path = '/employers/{employerId}/reports/packs/{id}'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'id' + '}', id.to_s)

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

      return_type = opts[:return_type] || 'ReportPack' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportPackApi#update_report_pack\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end