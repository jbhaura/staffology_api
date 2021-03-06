=begin
#Staffology Payroll API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1
Contact: duane@staffology.co.uk
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.29
=end

module SwaggerClient
  class NoteApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add Document
    # Adds document to the Note
    # @param employer_id 
    # @param employee_id 
    # @param id The Id of the Note you want to attach documents to
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file 
    # @return [nil]
    def add_document_note(employer_id, employee_id, id, opts = {})
      add_document_note_with_http_info(employer_id, employee_id, id, opts)
      nil
    end

    # Add Document
    # Adds document to the Note
    # @param employer_id 
    # @param employee_id 
    # @param id The Id of the Note you want to attach documents to
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def add_document_note_with_http_info(employer_id, employee_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NoteApi.add_document_note ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling NoteApi.add_document_note"
      end
      # verify the required parameter 'employee_id' is set
      if @api_client.config.client_side_validation && employee_id.nil?
        fail ArgumentError, "Missing the required parameter 'employee_id' when calling NoteApi.add_document_note"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling NoteApi.add_document_note"
      end
      # resource path
      local_var_path = '/employers/{employerId}/employees/{employeeId}/notes/{id}/documents'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'employeeId' + '}', employee_id.to_s).sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['file'] = opts[:'file'] if !opts[:'file'].nil?

      # http body (model)
      post_body = opts[:body] 

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
        @api_client.config.logger.debug "API called: NoteApi#add_document_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create Note
    # Creates a Note for the Employee
    # @param employer_id 
    # @param employee_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Note] :body 
    # @return [nil]
    def create_note(employer_id, employee_id, opts = {})
      create_note_with_http_info(employer_id, employee_id, opts)
      nil
    end

    # Create Note
    # Creates a Note for the Employee
    # @param employer_id 
    # @param employee_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Note] :body 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def create_note_with_http_info(employer_id, employee_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NoteApi.create_note ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling NoteApi.create_note"
      end
      # verify the required parameter 'employee_id' is set
      if @api_client.config.client_side_validation && employee_id.nil?
        fail ArgumentError, "Missing the required parameter 'employee_id' when calling NoteApi.create_note"
      end
      # resource path
      local_var_path = '/employers/{employerId}/employees/{employeeId}/notes'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'employeeId' + '}', employee_id.to_s)

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
        @api_client.config.logger.debug "API called: NoteApi#create_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete Note Document
    # Deletes the document specified by the documentId for the Note specified by the Id
    # @param employer_id 
    # @param employee_id 
    # @param id 
    # @param document_id The Id of the Document you want to delete.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_document_note(employer_id, employee_id, id, document_id, opts = {})
      delete_document_note_with_http_info(employer_id, employee_id, id, document_id, opts)
      nil
    end

    # Delete Note Document
    # Deletes the document specified by the documentId for the Note specified by the Id
    # @param employer_id 
    # @param employee_id 
    # @param id 
    # @param document_id The Id of the Document you want to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_document_note_with_http_info(employer_id, employee_id, id, document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NoteApi.delete_document_note ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling NoteApi.delete_document_note"
      end
      # verify the required parameter 'employee_id' is set
      if @api_client.config.client_side_validation && employee_id.nil?
        fail ArgumentError, "Missing the required parameter 'employee_id' when calling NoteApi.delete_document_note"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling NoteApi.delete_document_note"
      end
      # verify the required parameter 'document_id' is set
      if @api_client.config.client_side_validation && document_id.nil?
        fail ArgumentError, "Missing the required parameter 'document_id' when calling NoteApi.delete_document_note"
      end
      # resource path
      local_var_path = '/employers/{employerId}/employees/{employeeId}/notes/{id}/documents/{documentId}'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'employeeId' + '}', employee_id.to_s).sub('{' + 'id' + '}', id.to_s).sub('{' + 'documentId' + '}', document_id.to_s)

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
        @api_client.config.logger.debug "API called: NoteApi#delete_document_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete Note
    # Deletes the Note specified by the Id for the Employee specified by the EmployeeId
    # @param employer_id 
    # @param employee_id 
    # @param id The Id of the Note you want to delete.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_note(employer_id, employee_id, id, opts = {})
      delete_note_with_http_info(employer_id, employee_id, id, opts)
      nil
    end

    # Delete Note
    # Deletes the Note specified by the Id for the Employee specified by the EmployeeId
    # @param employer_id 
    # @param employee_id 
    # @param id The Id of the Note you want to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_note_with_http_info(employer_id, employee_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NoteApi.delete_note ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling NoteApi.delete_note"
      end
      # verify the required parameter 'employee_id' is set
      if @api_client.config.client_side_validation && employee_id.nil?
        fail ArgumentError, "Missing the required parameter 'employee_id' when calling NoteApi.delete_note"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling NoteApi.delete_note"
      end
      # resource path
      local_var_path = '/employers/{employerId}/employees/{employeeId}/notes/{id}'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'employeeId' + '}', employee_id.to_s).sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: NoteApi#delete_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Note Document
    # Gets the document specified by the documentId for the Note specified by the Id
    # @param employer_id 
    # @param employee_id 
    # @param id 
    # @param document_id The Id of the Document you want to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_document_note(employer_id, employee_id, id, document_id, opts = {})
      data, _status_code, _headers = get_document_note_with_http_info(employer_id, employee_id, id, document_id, opts)
      data
    end

    # Get Note Document
    # Gets the document specified by the documentId for the Note specified by the Id
    # @param employer_id 
    # @param employee_id 
    # @param id 
    # @param document_id The Id of the Document you want to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def get_document_note_with_http_info(employer_id, employee_id, id, document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NoteApi.get_document_note ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling NoteApi.get_document_note"
      end
      # verify the required parameter 'employee_id' is set
      if @api_client.config.client_side_validation && employee_id.nil?
        fail ArgumentError, "Missing the required parameter 'employee_id' when calling NoteApi.get_document_note"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling NoteApi.get_document_note"
      end
      # verify the required parameter 'document_id' is set
      if @api_client.config.client_side_validation && document_id.nil?
        fail ArgumentError, "Missing the required parameter 'document_id' when calling NoteApi.get_document_note"
      end
      # resource path
      local_var_path = '/employers/{employerId}/employees/{employeeId}/notes/{id}/documents/{documentId}'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'employeeId' + '}', employee_id.to_s).sub('{' + 'id' + '}', id.to_s).sub('{' + 'documentId' + '}', document_id.to_s)

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

      return_type = opts[:return_type] || 'String' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NoteApi#get_document_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Note
    # Gets the Note specified by the Id for the Employee specified by the EmployeeId
    # @param employer_id 
    # @param employee_id 
    # @param id The Id of the Note you want to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [Note]
    def get_note(employer_id, employee_id, id, opts = {})
      data, _status_code, _headers = get_note_with_http_info(employer_id, employee_id, id, opts)
      data
    end

    # Get Note
    # Gets the Note specified by the Id for the Employee specified by the EmployeeId
    # @param employer_id 
    # @param employee_id 
    # @param id The Id of the Note you want to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Note, Integer, Hash)>] Note data, response status code and response headers
    def get_note_with_http_info(employer_id, employee_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NoteApi.get_note ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling NoteApi.get_note"
      end
      # verify the required parameter 'employee_id' is set
      if @api_client.config.client_side_validation && employee_id.nil?
        fail ArgumentError, "Missing the required parameter 'employee_id' when calling NoteApi.get_note"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling NoteApi.get_note"
      end
      # resource path
      local_var_path = '/employers/{employerId}/employees/{employeeId}/notes/{id}'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'employeeId' + '}', employee_id.to_s).sub('{' + 'id' + '}', id.to_s)

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

      return_type = opts[:return_type] || 'Note' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NoteApi#get_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List Notes
    # Lists all Note for the Employee
    # @param employer_id 
    # @param employee_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<Item>]
    def index_note(employer_id, employee_id, opts = {})
      data, _status_code, _headers = index_note_with_http_info(employer_id, employee_id, opts)
      data
    end

    # List Notes
    # Lists all Note for the Employee
    # @param employer_id 
    # @param employee_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Item>, Integer, Hash)>] Array<Item> data, response status code and response headers
    def index_note_with_http_info(employer_id, employee_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NoteApi.index_note ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling NoteApi.index_note"
      end
      # verify the required parameter 'employee_id' is set
      if @api_client.config.client_side_validation && employee_id.nil?
        fail ArgumentError, "Missing the required parameter 'employee_id' when calling NoteApi.index_note"
      end
      # resource path
      local_var_path = '/employers/{employerId}/employees/{employeeId}/notes'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'employeeId' + '}', employee_id.to_s)

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
        @api_client.config.logger.debug "API called: NoteApi#index_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update Note
    # @param employer_id 
    # @param employee_id 
    # @param id The Id of the Note you want to update.
    # @param [Hash] opts the optional parameters
    # @option opts [Note] :body 
    # @return [Note]
    def update_note(employer_id, employee_id, id, opts = {})
      data, _status_code, _headers = update_note_with_http_info(employer_id, employee_id, id, opts)
      data
    end

    # Update Note
    # @param employer_id 
    # @param employee_id 
    # @param id The Id of the Note you want to update.
    # @param [Hash] opts the optional parameters
    # @option opts [Note] :body 
    # @return [Array<(Note, Integer, Hash)>] Note data, response status code and response headers
    def update_note_with_http_info(employer_id, employee_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NoteApi.update_note ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling NoteApi.update_note"
      end
      # verify the required parameter 'employee_id' is set
      if @api_client.config.client_side_validation && employee_id.nil?
        fail ArgumentError, "Missing the required parameter 'employee_id' when calling NoteApi.update_note"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling NoteApi.update_note"
      end
      # resource path
      local_var_path = '/employers/{employerId}/employees/{employeeId}/notes/{id}'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'employeeId' + '}', employee_id.to_s).sub('{' + 'id' + '}', id.to_s)

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

      return_type = opts[:return_type] || 'Note' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NoteApi#update_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
