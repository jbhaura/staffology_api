# SwaggerClient::TagApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_tag**](TagApi.md#create_tag) | **POST** /employers/{employerId}/tags | Create Tag
[**delete_tag**](TagApi.md#delete_tag) | **DELETE** /employers/{employerId}/tags/{code} | Delete Tag
[**get_tag**](TagApi.md#get_tag) | **GET** /employers/{employerId}/tags/{code} | Get Tag
[**index_tag**](TagApi.md#index_tag) | **GET** /employers/{employerId}/tags | List Tags
[**update_tag**](TagApi.md#update_tag) | **PUT** /employers/{employerId}/tags/{code} | Update Tag

# **create_tag**
> Tag create_tag(employer_id, opts)

Create Tag

Creates a new Tag for the Employer.

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

api_instance = SwaggerClient::TagApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  body: SwaggerClient::Tag.new # Tag | 
}

begin
  #Create Tag
  result = api_instance.create_tag(employer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TagApi->create_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **body** | [**Tag**](Tag.md)|  | [optional] 

### Return type

[**Tag**](Tag.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **delete_tag**
> delete_tag(employer_id, code)

Delete Tag

Deletes the specified Tag.

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

api_instance = SwaggerClient::TagApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
code = 'code_example' # String | 


begin
  #Delete Tag
  api_instance.delete_tag(employer_id, code)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TagApi->delete_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **code** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_tag**
> Tag get_tag(employer_id, code)

Get Tag

Gets the Tag specified.

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

api_instance = SwaggerClient::TagApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the Tag belongs.
code = 'code_example' # String | 


begin
  #Get Tag
  result = api_instance.get_tag(employer_id, code)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TagApi->get_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the Tag belongs. | 
 **code** | **String**|  | 

### Return type

[**Tag**](Tag.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **index_tag**
> Array&lt;Item&gt; index_tag(employer_id)

List Tags

Lists all Tags for an Employer.

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

api_instance = SwaggerClient::TagApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer for which you want to list Tags


begin
  #List Tags
  result = api_instance.index_tag(employer_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TagApi->index_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer for which you want to list Tags | 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_tag**
> Tag update_tag(employer_idcode, opts)

Update Tag

Updates a Tag for the Employer.

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

api_instance = SwaggerClient::TagApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
code = 'code_example' # String | 
opts = { 
  body: SwaggerClient::Tag.new # Tag | 
}

begin
  #Update Tag
  result = api_instance.update_tag(employer_idcode, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TagApi->update_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **code** | **String**|  | 
 **body** | [**Tag**](Tag.md)|  | [optional] 

### Return type

[**Tag**](Tag.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



