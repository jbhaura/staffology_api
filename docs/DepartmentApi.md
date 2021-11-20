# SwaggerClient::DepartmentApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_department**](DepartmentApi.md#create_department) | **POST** /employers/{employerId}/departments | Create Department
[**delete_department**](DepartmentApi.md#delete_department) | **DELETE** /employers/{employerId}/departments/{code} | Delete Department
[**get_department**](DepartmentApi.md#get_department) | **GET** /employers/{employerId}/departments/{code} | Get Department
[**index_department**](DepartmentApi.md#index_department) | **GET** /employers/{employerId}/departments | List Departments
[**update_department**](DepartmentApi.md#update_department) | **PUT** /employers/{employerId}/departments/{code} | Update Department

# **create_department**
> Department create_department(employer_id, opts)

Create Department

Creates a new Department for the Employer.

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

api_instance = SwaggerClient::DepartmentApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  body: SwaggerClient::Department.new # Department | 
}

begin
  #Create Department
  result = api_instance.create_department(employer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DepartmentApi->create_department: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **body** | [**Department**](Department.md)|  | [optional] 

### Return type

[**Department**](Department.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **delete_department**
> delete_department(employer_id, code)

Delete Department

Deletes the specified Department.

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

api_instance = SwaggerClient::DepartmentApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
code = 'code_example' # String | 


begin
  #Delete Department
  api_instance.delete_department(employer_id, code)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DepartmentApi->delete_department: #{e}"
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



# **get_department**
> Department get_department(employer_id, code)

Get Department

Gets the Department specified.

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

api_instance = SwaggerClient::DepartmentApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the Department belongs.
code = 'code_example' # String | 


begin
  #Get Department
  result = api_instance.get_department(employer_id, code)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DepartmentApi->get_department: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the Department belongs. | 
 **code** | **String**|  | 

### Return type

[**Department**](Department.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **index_department**
> Array&lt;Item&gt; index_department(employer_id)

List Departments

Lists all Departments for an Employer.

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

api_instance = SwaggerClient::DepartmentApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer for which you want to list Departments


begin
  #List Departments
  result = api_instance.index_department(employer_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DepartmentApi->index_department: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer for which you want to list Departments | 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_department**
> Department update_department(employer_idcode, opts)

Update Department

Updates a Department for the Employer.

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

api_instance = SwaggerClient::DepartmentApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
code = 'code_example' # String | 
opts = { 
  body: SwaggerClient::Department.new # Department | 
}

begin
  #Update Department
  result = api_instance.update_department(employer_idcode, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DepartmentApi->update_department: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **code** | **String**|  | 
 **body** | [**Department**](Department.md)|  | [optional] 

### Return type

[**Department**](Department.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



