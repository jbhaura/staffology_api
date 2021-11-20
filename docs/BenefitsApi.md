# SwaggerClient::BenefitsApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_benefits**](BenefitsApi.md#create_benefits) | **POST** /employers/{employerId}/employees/{employeeId}/benefits | Create Benefit
[**delete_benefits**](BenefitsApi.md#delete_benefits) | **DELETE** /employers/{employerId}/employees/{employeeId}/benefits/{id} | Delete Benefit
[**get_benefits**](BenefitsApi.md#get_benefits) | **GET** /employers/{employerId}/employees/{employeeId}/benefits/{id} | Get Benefit
[**index_benefits**](BenefitsApi.md#index_benefits) | **GET** /employers/{employerId}/employees/{employeeId}/benefits | List Benefits
[**update_benefits**](BenefitsApi.md#update_benefits) | **PUT** /employers/{employerId}/employees/{employeeId}/benefits/{id} | Update Benefit

# **create_benefits**
> create_benefits(employer_idemployee_id, opts)

Create Benefit

Creates a Benefit for the Employee

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

api_instance = SwaggerClient::BenefitsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  body: SwaggerClient::Benefit.new # Benefit | 
}

begin
  #Create Benefit
  api_instance.create_benefits(employer_idemployee_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BenefitsApi->create_benefits: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **employee_id** | [**String**](.md)|  | 
 **body** | [**Benefit**](Benefit.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined



# **delete_benefits**
> delete_benefits(employer_id, employee_id, id)

Delete Benefit

Deletes the Benefit specified by the Id for the Employee specified by the EmployeeId

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

api_instance = SwaggerClient::BenefitsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Benefit you want to delete.


begin
  #Delete Benefit
  api_instance.delete_benefits(employer_id, employee_id, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BenefitsApi->delete_benefits: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **employee_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)| The Id of the Benefit you want to delete. | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_benefits**
> Benefit get_benefits(employer_id, employee_id, id)

Get Benefit

Gets the Benefit specified by the Id for the Employee specified by the EmployeeId

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

api_instance = SwaggerClient::BenefitsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Benefit you want to retrieve.


begin
  #Get Benefit
  result = api_instance.get_benefits(employer_id, employee_id, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BenefitsApi->get_benefits: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **employee_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)| The Id of the Benefit you want to retrieve. | 

### Return type

[**Benefit**](Benefit.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **index_benefits**
> Array&lt;Item&gt; index_benefits(employer_id, employee_id)

List Benefits

Lists all Benefits for the Employee

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

api_instance = SwaggerClient::BenefitsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #List Benefits
  result = api_instance.index_benefits(employer_id, employee_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BenefitsApi->index_benefits: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **employee_id** | [**String**](.md)|  | 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_benefits**
> Benefit update_benefits(employer_idemployee_idid, opts)

Update Benefit

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

api_instance = SwaggerClient::BenefitsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Benefit you want to update.
opts = { 
  body: SwaggerClient::Benefit.new # Benefit | 
}

begin
  #Update Benefit
  result = api_instance.update_benefits(employer_idemployee_idid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BenefitsApi->update_benefits: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **employee_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)| The Id of the Benefit you want to update. | 
 **body** | [**Benefit**](Benefit.md)|  | [optional] 

### Return type

[**Benefit**](Benefit.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



