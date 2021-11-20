# SwaggerClient::WorkingPatternApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_working_pattern**](WorkingPatternApi.md#create_working_pattern) | **POST** /employers/{employerId}/workingpatterns | Create WorkingPattern
[**delete_working_pattern**](WorkingPatternApi.md#delete_working_pattern) | **DELETE** /employers/{employerId}/workingpatterns/{id} | Delete WorkingPattern
[**get_working_pattern**](WorkingPatternApi.md#get_working_pattern) | **GET** /employers/{employerId}/workingpatterns/{id} | Get WorkingPattern
[**index_working_pattern**](WorkingPatternApi.md#index_working_pattern) | **GET** /employers/{employerId}/workingpatterns | List WorkingPatterns
[**update_working_pattern**](WorkingPatternApi.md#update_working_pattern) | **PUT** /employers/{employerId}/workingpatterns/{id} | Update WorkingPattern

# **create_working_pattern**
> WorkingPattern create_working_pattern(employer_id, opts)

Create WorkingPattern

Creates a new WorkingPattern for the Employer.

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

api_instance = SwaggerClient::WorkingPatternApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  body: SwaggerClient::WorkingPattern.new # WorkingPattern | 
}

begin
  #Create WorkingPattern
  result = api_instance.create_working_pattern(employer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WorkingPatternApi->create_working_pattern: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **body** | [**WorkingPattern**](WorkingPattern.md)|  | [optional] 

### Return type

[**WorkingPattern**](WorkingPattern.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **delete_working_pattern**
> delete_working_pattern(employer_id, id)

Delete WorkingPattern

Deletes the specified WorkingPattern.

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

api_instance = SwaggerClient::WorkingPatternApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Delete WorkingPattern
  api_instance.delete_working_pattern(employer_id, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WorkingPatternApi->delete_working_pattern: #{e}"
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



# **get_working_pattern**
> WorkingPattern get_working_pattern(employer_id, id)

Get WorkingPattern

Gets the WorkingPattern specified.

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

api_instance = SwaggerClient::WorkingPatternApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the WorkingPattern belongs.
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the WorkingPattern you want to retrieve.


begin
  #Get WorkingPattern
  result = api_instance.get_working_pattern(employer_id, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WorkingPatternApi->get_working_pattern: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the WorkingPattern belongs. | 
 **id** | [**String**](.md)| The id of the WorkingPattern you want to retrieve. | 

### Return type

[**WorkingPattern**](WorkingPattern.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **index_working_pattern**
> Array&lt;Item&gt; index_working_pattern(employer_id)

List WorkingPatterns

Lists all WorkingPattern for the Employer specified.

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

api_instance = SwaggerClient::WorkingPatternApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer for which you want to list WorkingPattern


begin
  #List WorkingPatterns
  result = api_instance.index_working_pattern(employer_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WorkingPatternApi->index_working_pattern: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer for which you want to list WorkingPattern | 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_working_pattern**
> WorkingPattern update_working_pattern(employer_idid, opts)

Update WorkingPattern

Updates the details of an existing WorkingPattern.

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

api_instance = SwaggerClient::WorkingPatternApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  body: SwaggerClient::WorkingPattern.new # WorkingPattern | 
}

begin
  #Update WorkingPattern
  result = api_instance.update_working_pattern(employer_idid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WorkingPatternApi->update_working_pattern: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)|  | 
 **body** | [**WorkingPattern**](WorkingPattern.md)|  | [optional] 

### Return type

[**WorkingPattern**](WorkingPattern.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



