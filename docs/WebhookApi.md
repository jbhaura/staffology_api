# SwaggerClient::WebhookApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_webhook**](WebhookApi.md#create_webhook) | **POST** /employers/{employerId}/webhooks | Create Webhook
[**delete_webhook**](WebhookApi.md#delete_webhook) | **DELETE** /employers/{employerId}/webhooks/{id} | Delete Webhook
[**get_webhook**](WebhookApi.md#get_webhook) | **GET** /employers/{employerId}/webhooks/{id} | Get Webhook
[**index_webhook**](WebhookApi.md#index_webhook) | **GET** /employers/{employerId}/webhooks | List Webhooks
[**payload_webhook**](WebhookApi.md#payload_webhook) | **GET** /employers/{employerId}/webhooks/{id}/payloads/{payloadId} | Get WebhookPayload
[**payloads_webhook**](WebhookApi.md#payloads_webhook) | **GET** /employers/{employerId}/webhooks/{id}/payloads | List WebhookPayloads
[**sample_webhook**](WebhookApi.md#sample_webhook) | **GET** /employers/{employerId}/webhooks/samples/{webhookEvent} | Sample Value
[**update_webhook**](WebhookApi.md#update_webhook) | **PUT** /employers/{employerId}/webhooks/{id} | Update Webhook

# **create_webhook**
> create_webhook(employer_id, opts)

Create Webhook

Creates a new Webhook for the Employer.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::WebhookApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  body: SwaggerClient::Webhook.new # Webhook | 
}

begin
  #Create Webhook
  api_instance.create_webhook(employer_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WebhookApi->create_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **body** | [**Webhook**](Webhook.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined



# **delete_webhook**
> delete_webhook(employer_id, id)

Delete Webhook

Deletes the specified Webhook.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::WebhookApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Delete Webhook
  api_instance.delete_webhook(employer_id, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WebhookApi->delete_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)|  | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_webhook**
> Webhook get_webhook(employer_id, id)

Get Webhook

Gets the Webhook specified.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::WebhookApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the Webhook belongs.
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Get Webhook
  result = api_instance.get_webhook(employer_id, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WebhookApi->get_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the Webhook belongs. | 
 **id** | [**String**](.md)|  | 

### Return type

[**Webhook**](Webhook.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **index_webhook**
> Array&lt;Item&gt; index_webhook(employer_id)

List Webhooks

Lists all Webhooks for an Employer.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::WebhookApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer for which you want to list Webhooks


begin
  #List Webhooks
  result = api_instance.index_webhook(employer_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WebhookApi->index_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer for which you want to list Webhooks | 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **payload_webhook**
> WebhookPayload payload_webhook(employer_id, id, payload_id)

Get WebhookPayload

Returns the specified WebhookPayload for this webhook

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::WebhookApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
payload_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Get WebhookPayload
  result = api_instance.payload_webhook(employer_id, id, payload_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WebhookApi->payload_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)|  | 
 **payload_id** | [**String**](.md)|  | 

### Return type

[**WebhookPayload**](WebhookPayload.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **payloads_webhook**
> Array&lt;Item&gt; payloads_webhook(employer_id, id, opts)

List WebhookPayloads

Returns a list of all WebhookPayloads for this webhook

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::WebhookApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  page_num: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  #List WebhookPayloads
  result = api_instance.payloads_webhook(employer_id, id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WebhookApi->payloads_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)|  | 
 **page_num** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sample_webhook**
> sample_webhook(employer_id, webhook_event)

Sample Value

Returns an example of the data you can expect your end point to receive when a webhook is fired.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::WebhookApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the Webhook belongs.
webhook_event = SwaggerClient::WebhookEvent.new # WebhookEvent | The WebhookEvent that you want a sample value for.


begin
  #Sample Value
  api_instance.sample_webhook(employer_id, webhook_event)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WebhookApi->sample_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the Webhook belongs. | 
 **webhook_event** | [**WebhookEvent**](.md)| The WebhookEvent that you want a sample value for. | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_webhook**
> Webhook update_webhook(employer_idid, opts)

Update Webhook

Updates a Webhook for the Employer.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::WebhookApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  body: SwaggerClient::Webhook.new # Webhook | 
}

begin
  #Update Webhook
  result = api_instance.update_webhook(employer_idid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WebhookApi->update_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)|  | 
 **body** | [**Webhook**](Webhook.md)|  | [optional] 

### Return type

[**Webhook**](Webhook.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



