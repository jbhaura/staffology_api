# SwaggerClient::EmployerGroupApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_employer_group**](EmployerGroupApi.md#create_employer_group) | **POST** /employers/groups | Create EmployerGroup
[**delete_employer_group**](EmployerGroupApi.md#delete_employer_group) | **DELETE** /employers/groups/{code} | Delete EmployerGroup
[**get_employer_group**](EmployerGroupApi.md#get_employer_group) | **GET** /employers/groups/{code} | Get EmployerGroup
[**index_employer_group**](EmployerGroupApi.md#index_employer_group) | **GET** /employers/groups | List EmployerGroups
[**update_employer_group**](EmployerGroupApi.md#update_employer_group) | **PUT** /employers/groups/{code} | Update EmployerGroup

# **create_employer_group**
> EmployerGroup create_employer_group(opts)

Create EmployerGroup

Creates a new EmployerGroup for the user.

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

api_instance = SwaggerClient::EmployerGroupApi.new
opts = { 
  body: SwaggerClient::EmployerGroup.new # EmployerGroup | 
}

begin
  #Create EmployerGroup
  result = api_instance.create_employer_group(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployerGroupApi->create_employer_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EmployerGroup**](EmployerGroup.md)|  | [optional] 

### Return type

[**EmployerGroup**](EmployerGroup.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **delete_employer_group**
> delete_employer_group(code)

Delete EmployerGroup

Deletes the specified EmployerGroup.

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

api_instance = SwaggerClient::EmployerGroupApi.new
code = 'code_example' # String | 


begin
  #Delete EmployerGroup
  api_instance.delete_employer_group(code)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployerGroupApi->delete_employer_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_employer_group**
> EmployerGroup get_employer_group(code)

Get EmployerGroup

Gets the EmployerGroup specified.

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

api_instance = SwaggerClient::EmployerGroupApi.new
code = 'code_example' # String | 


begin
  #Get EmployerGroup
  result = api_instance.get_employer_group(code)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployerGroupApi->get_employer_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**|  | 

### Return type

[**EmployerGroup**](EmployerGroup.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **index_employer_group**
> Array&lt;Item&gt; index_employer_group

List EmployerGroups

Lists all EmployerGroups for the user.

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

api_instance = SwaggerClient::EmployerGroupApi.new

begin
  #List EmployerGroups
  result = api_instance.index_employer_group
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployerGroupApi->index_employer_group: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_employer_group**
> EmployerGroup update_employer_group(code, opts)

Update EmployerGroup

Updates a EmployerGroup for the user.

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

api_instance = SwaggerClient::EmployerGroupApi.new
code = 'code_example' # String | 
opts = { 
  body: SwaggerClient::EmployerGroup.new # EmployerGroup | 
}

begin
  #Update EmployerGroup
  result = api_instance.update_employer_group(code, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployerGroupApi->update_employer_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**|  | 
 **body** | [**EmployerGroup**](EmployerGroup.md)|  | [optional] 

### Return type

[**EmployerGroup**](EmployerGroup.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



