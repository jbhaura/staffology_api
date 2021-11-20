=begin
#Staffology Payroll API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1
Contact: duane@staffology.co.uk
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.29
=end

module SwaggerClient
  class WebhookApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Webhook
    # Creates a new Webhook for the Employer.
    # @param employer_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Webhook] :body 
    # @return [nil]
    def create_webhook(employer_id, opts = {})
      create_webhook_with_http_info(employer_id, opts)
      nil
    end

    # Create Webhook
    # Creates a new Webhook for the Employer.
    # @param employer_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Webhook] :body 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def create_webhook_with_http_info(employer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.create_webhook ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling WebhookApi.create_webhook"
      end
      # resource path
      local_var_path = '/employers/{employerId}/webhooks'.sub('{' + 'employerId' + '}', employer_id.to_s)

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
        @api_client.config.logger.debug "API called: WebhookApi#create_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete Webhook
    # Deletes the specified Webhook.
    # @param employer_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_webhook(employer_id, id, opts = {})
      delete_webhook_with_http_info(employer_id, id, opts)
      nil
    end

    # Delete Webhook
    # Deletes the specified Webhook.
    # @param employer_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_webhook_with_http_info(employer_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.delete_webhook ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling WebhookApi.delete_webhook"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebhookApi.delete_webhook"
      end
      # resource path
      local_var_path = '/employers/{employerId}/webhooks/{id}'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: WebhookApi#delete_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Webhook
    # Gets the Webhook specified.
    # @param employer_id The Id of the Employer to which the Webhook belongs.
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Webhook]
    def get_webhook(employer_id, id, opts = {})
      data, _status_code, _headers = get_webhook_with_http_info(employer_id, id, opts)
      data
    end

    # Get Webhook
    # Gets the Webhook specified.
    # @param employer_id The Id of the Employer to which the Webhook belongs.
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Webhook, Integer, Hash)>] Webhook data, response status code and response headers
    def get_webhook_with_http_info(employer_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.get_webhook ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling WebhookApi.get_webhook"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebhookApi.get_webhook"
      end
      # resource path
      local_var_path = '/employers/{employerId}/webhooks/{id}'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'id' + '}', id.to_s)

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

      return_type = opts[:return_type] || 'Webhook' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#get_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List Webhooks
    # Lists all Webhooks for an Employer.
    # @param employer_id The Id of the Employer for which you want to list Webhooks
    # @param [Hash] opts the optional parameters
    # @return [Array<Item>]
    def index_webhook(employer_id, opts = {})
      data, _status_code, _headers = index_webhook_with_http_info(employer_id, opts)
      data
    end

    # List Webhooks
    # Lists all Webhooks for an Employer.
    # @param employer_id The Id of the Employer for which you want to list Webhooks
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Item>, Integer, Hash)>] Array<Item> data, response status code and response headers
    def index_webhook_with_http_info(employer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.index_webhook ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling WebhookApi.index_webhook"
      end
      # resource path
      local_var_path = '/employers/{employerId}/webhooks'.sub('{' + 'employerId' + '}', employer_id.to_s)

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
        @api_client.config.logger.debug "API called: WebhookApi#index_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get WebhookPayload
    # Returns the specified WebhookPayload for this webhook
    # @param employer_id 
    # @param id 
    # @param payload_id 
    # @param [Hash] opts the optional parameters
    # @return [WebhookPayload]
    def payload_webhook(employer_id, id, payload_id, opts = {})
      data, _status_code, _headers = payload_webhook_with_http_info(employer_id, id, payload_id, opts)
      data
    end

    # Get WebhookPayload
    # Returns the specified WebhookPayload for this webhook
    # @param employer_id 
    # @param id 
    # @param payload_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookPayload, Integer, Hash)>] WebhookPayload data, response status code and response headers
    def payload_webhook_with_http_info(employer_id, id, payload_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.payload_webhook ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling WebhookApi.payload_webhook"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebhookApi.payload_webhook"
      end
      # verify the required parameter 'payload_id' is set
      if @api_client.config.client_side_validation && payload_id.nil?
        fail ArgumentError, "Missing the required parameter 'payload_id' when calling WebhookApi.payload_webhook"
      end
      # resource path
      local_var_path = '/employers/{employerId}/webhooks/{id}/payloads/{payloadId}'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'id' + '}', id.to_s).sub('{' + 'payloadId' + '}', payload_id.to_s)

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

      return_type = opts[:return_type] || 'WebhookPayload' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#payload_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List WebhookPayloads
    # Returns a list of all WebhookPayloads for this webhook
    # @param employer_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_num 
    # @option opts [Integer] :page_size 
    # @return [Array<Item>]
    def payloads_webhook(employer_id, id, opts = {})
      data, _status_code, _headers = payloads_webhook_with_http_info(employer_id, id, opts)
      data
    end

    # List WebhookPayloads
    # Returns a list of all WebhookPayloads for this webhook
    # @param employer_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_num 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<Item>, Integer, Hash)>] Array<Item> data, response status code and response headers
    def payloads_webhook_with_http_info(employer_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.payloads_webhook ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling WebhookApi.payloads_webhook"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebhookApi.payloads_webhook"
      end
      # resource path
      local_var_path = '/employers/{employerId}/webhooks/{id}/payloads'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'pageNum'] = opts[:'page_num'] if !opts[:'page_num'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?

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
        @api_client.config.logger.debug "API called: WebhookApi#payloads_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Sample Value
    # Returns an example of the data you can expect your end point to receive when a webhook is fired.
    # @param employer_id The Id of the Employer to which the Webhook belongs.
    # @param webhook_event The WebhookEvent that you want a sample value for.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def sample_webhook(employer_id, webhook_event, opts = {})
      sample_webhook_with_http_info(employer_id, webhook_event, opts)
      nil
    end

    # Sample Value
    # Returns an example of the data you can expect your end point to receive when a webhook is fired.
    # @param employer_id The Id of the Employer to which the Webhook belongs.
    # @param webhook_event The WebhookEvent that you want a sample value for.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def sample_webhook_with_http_info(employer_id, webhook_event, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.sample_webhook ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling WebhookApi.sample_webhook"
      end
      # verify the required parameter 'webhook_event' is set
      if @api_client.config.client_side_validation && webhook_event.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_event' when calling WebhookApi.sample_webhook"
      end
      # resource path
      local_var_path = '/employers/{employerId}/webhooks/samples/{webhookEvent}'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'webhookEvent' + '}', webhook_event.to_s)

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

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#sample_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update Webhook
    # Updates a Webhook for the Employer.
    # @param employer_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [Webhook] :body 
    # @return [Webhook]
    def update_webhook(employer_id, id, opts = {})
      data, _status_code, _headers = update_webhook_with_http_info(employer_id, id, opts)
      data
    end

    # Update Webhook
    # Updates a Webhook for the Employer.
    # @param employer_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [Webhook] :body 
    # @return [Array<(Webhook, Integer, Hash)>] Webhook data, response status code and response headers
    def update_webhook_with_http_info(employer_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.update_webhook ...'
      end
      # verify the required parameter 'employer_id' is set
      if @api_client.config.client_side_validation && employer_id.nil?
        fail ArgumentError, "Missing the required parameter 'employer_id' when calling WebhookApi.update_webhook"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebhookApi.update_webhook"
      end
      # resource path
      local_var_path = '/employers/{employerId}/webhooks/{id}'.sub('{' + 'employerId' + '}', employer_id.to_s).sub('{' + 'id' + '}', id.to_s)

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

      return_type = opts[:return_type] || 'Webhook' 

      auth_names = opts[:auth_names] || ['Basic', 'oauth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#update_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
