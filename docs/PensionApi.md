# SwaggerClient::PensionApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_pension**](PensionApi.md#get_pension) | **GET** /employers/{employerId}/employees/{employeeId}/pension | Get Pension
[**remove_pension**](PensionApi.md#remove_pension) | **DELETE** /employers/{employerId}/employees/{employeeId}/pension | Remove Pension
[**update_pension**](PensionApi.md#update_pension) | **PUT** /employers/{employerId}/employees/{employeeId}/pension | Update Pension

# **get_pension**
> Pension get_pension(employer_id, employee_id)

Get Pension

Returns the Pension, if any, for an Employee

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

api_instance = SwaggerClient::PensionApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the Employee belongs
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employee for which you want to retrieve the Pension


begin
  #Get Pension
  result = api_instance.get_pension(employer_id, employee_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PensionApi->get_pension: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the Employee belongs | 
 **employee_id** | [**String**](.md)| The Id of the Employee for which you want to retrieve the Pension | 

### Return type

[**Pension**](Pension.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **remove_pension**
> remove_pension(employer_id, employee_id)

Remove Pension

Removes the Pension for an Employee.  For Non-AE Pensions, this is the same as an Update with an empty JSON object.\\n  For AE Pensions this will remove the employee from the pension and delete any associated AeAssessments

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

api_instance = SwaggerClient::PensionApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the Employee belongs
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employee for which you want to remove the Pension


begin
  #Remove Pension
  api_instance.remove_pension(employer_id, employee_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PensionApi->remove_pension: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the Employee belongs | 
 **employee_id** | [**String**](.md)| The Id of the Employee for which you want to remove the Pension | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **update_pension**
> Pension update_pension(employer_idemployee_id, opts)

Update Pension

Updates the Pension for an Employee.

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

api_instance = SwaggerClient::PensionApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the Employee belongs
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employee for which you want to update the Pension
opts = { 
  body: SwaggerClient::Pension.new # Pension | 
}

begin
  #Update Pension
  result = api_instance.update_pension(employer_idemployee_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PensionApi->update_pension: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the Employee belongs | 
 **employee_id** | [**String**](.md)| The Id of the Employee for which you want to update the Pension | 
 **body** | [**Pension**](Pension.md)|  | [optional] 

### Return type

[**Pension**](Pension.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json



