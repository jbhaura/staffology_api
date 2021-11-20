=begin
#Staffology Payroll API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1
Contact: duane@staffology.co.uk
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.29
=end

module SwaggerClient
  class InvitationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Accept Invitation
    # Accepts the Invitation.\\n  The user making this API call must have the email address that the invite was created for and the email address must be verified.
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :accept_invitation Set to true to accept the invitation or false to decline it.
    # @return [nil]
    def accept_invitation(id, opts = {})
      accept_invitation_with_http_info(id, opts)
      nil
    end

    # Accept Invitation
    # Accepts the Invitation.\\n  The user making this API call must have the email address that the invite was created for and the email address must be verified.
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :accept_invitation Set to true to accept the invitation or false to decline it.
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def accept_invitation_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvitationApi.accept_invitation ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InvitationApi.accept_invitation"
      end
      # resource path
      local_var_path = '/invitations/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'acceptInvitation'] = opts[:'accept_invitation'] if !opts[:'accept_invitation'].nil?

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

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
        @api_client.config.logger.debug "API called: InvitationApi#accept_invitation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create Invitation
    # Creates a new Invitation for the Employer.
    # @param employer_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Invitation] :body 
    # @return [Invitation]
    def create_invitation(employer_id, opts = {})
      data, _status_code, _headers = create_invitation_with_http_info(employer_id, opts)
      data
    end

    # Create Invitation
    # Creates a new Invitation for the Employer.
    # @param employer_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Invitation] :body 
    # @return [Array<(Invitation, Integer, Hash)>] Invitation data, response status code and response headers
    def create_invitation_with_http_info(employer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvitationApi.create_invitation ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling InvitationApi.create_invitation"
      end
      # resource path
      local_var_path = '/employers/{employerId}/invitation'.sub('{' + 'employerId' + '}', employer_id.to_s)

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

      return_type = opts[:return_type] || 'Invitation' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvitationApi#create_invitation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete Invitation
    # Deletes the specified Invitation.
    # @param employer_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_invitation(employer_id, id, opts = {})
      delete_invitation_with_http_info(employer_id, id, opts)
      nil
    end

    # Delete Invitation
    # Deletes the specified Invitation.
    # @param employer_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_invitation_with_http_info(employer_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvitationApi.delete_invitation ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling InvitationApi.delete_invitation"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InvitationApi.delete_invitation"
      end
      # resource path
      local_var_path = '/employers/{employerId}/invitation/{id}'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: InvitationApi#delete_invitation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Invitation
    # Gets the Invitation specified.
    # @param employer_id The Id of the Employer to which the Invitation belongs.
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Invitation]
    def get_invitation(employer_id, id, opts = {})
      data, _status_code, _headers = get_invitation_with_http_info(employer_id, id, opts)
      data
    end

    # Get Invitation
    # Gets the Invitation specified.
    # @param employer_id The Id of the Employer to which the Invitation belongs.
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Invitation, Integer, Hash)>] Invitation data, response status code and response headers
    def get_invitation_with_http_info(employer_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvitationApi.get_invitation ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling InvitationApi.get_invitation"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InvitationApi.get_invitation"
      end
      # resource path
      local_var_path = '/employers/{employerId}/invitation/{id}'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'id' + '}', id.to_s)

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

      return_type = opts[:return_type] || 'Invitation' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvitationApi#get_invitation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List Invitations
    # Lists all Invitations for an Employer.\\n  Only unaccepted Invitations are listed as they are deleted once they've been accepted.
    # @param employer_id The Id of the Employer for which you want to list Pay Codes
    # @param [Hash] opts the optional parameters
    # @return [Array<Item>]
    def index_invitation(employer_id, opts = {})
      data, _status_code, _headers = index_invitation_with_http_info(employer_id, opts)
      data
    end

    # List Invitations
    # Lists all Invitations for an Employer.\\n  Only unaccepted Invitations are listed as they are deleted once they&#x27;ve been accepted.
    # @param employer_id The Id of the Employer for which you want to list Pay Codes
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Item>, Integer, Hash)>] Array<Item> data, response status code and response headers
    def index_invitation_with_http_info(employer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvitationApi.index_invitation ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling InvitationApi.index_invitation"
      end
      # resource path
      local_var_path = '/employers/{employerId}/invitation'.sub('{' + 'employerId' + '}', employer_id.to_s)

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
        @api_client.config.logger.debug "API called: InvitationApi#index_invitation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end