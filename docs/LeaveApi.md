# SwaggerClient::LeaveApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_document_leave**](LeaveApi.md#add_document_leave) | **POST** /employers/{employerId}/employees/{employeeId}/leave/{id}/documents | Add Document
[**create_leave**](LeaveApi.md#create_leave) | **POST** /employers/{employerId}/employees/{employeeId}/leave | Create Leave
[**delete_document_leave**](LeaveApi.md#delete_document_leave) | **DELETE** /employers/{employerId}/employees/{employeeId}/leave/{id}/documents/{documentId} | Delete Leave Document
[**delete_leave**](LeaveApi.md#delete_leave) | **DELETE** /employers/{employerId}/employees/{employeeId}/leave/{id} | Delete Leave
[**get_document_leave**](LeaveApi.md#get_document_leave) | **GET** /employers/{employerId}/employees/{employeeId}/leave/{id}/documents/{documentId} | Get Leave Document
[**get_leave**](LeaveApi.md#get_leave) | **GET** /employers/{employerId}/employees/{employeeId}/leave/{id} | Get Leave
[**index_leave**](LeaveApi.md#index_leave) | **GET** /employers/{employerId}/employees/{employeeId}/leave | List Leave
[**update_leave**](LeaveApi.md#update_leave) | **PUT** /employers/{employerId}/employees/{employeeId}/leave/{id} | Update Leave

# **add_document_leave**
> add_document_leave(employer_idemployee_idid, opts)

Add Document

Adds document to the leave

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

api_instance = SwaggerClient::LeaveApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the leave you want to attach documents to
opts = { 
  file: 'file_example' # String | 
}

begin
  #Add Document
  api_instance.add_document_leave(employer_idemployee_idid, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LeaveApi->add_document_leave: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **employee_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)| The Id of the leave you want to attach documents to | 
 **file** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined



# **create_leave**
> create_leave(employer_idemployee_id, opts)

Create Leave

Creates Leave for the Employee

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

api_instance = SwaggerClient::LeaveApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  body: SwaggerClient::Leave.new # Leave | 
}

begin
  #Create Leave
  api_instance.create_leave(employer_idemployee_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LeaveApi->create_leave: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **employee_id** | [**String**](.md)|  | 
 **body** | [**Leave**](Leave.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined



# **delete_document_leave**
> delete_document_leave(employer_id, employee_id, id, document_id)

Delete Leave Document

Deletes the document specified by the documentId for the Leave specified by the Id

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

api_instance = SwaggerClient::LeaveApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
document_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Document you want to delete.


begin
  #Delete Leave Document
  api_instance.delete_document_leave(employer_id, employee_id, id, document_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LeaveApi->delete_document_leave: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **employee_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)|  | 
 **document_id** | [**String**](.md)| The Id of the Document you want to delete. | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_leave**
> delete_leave(employer_id, employee_id, id)

Delete Leave

Deletes the Leave specified by the Id for the Employee specified by the EmployeeId

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

api_instance = SwaggerClient::LeaveApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Leave you want to delete.


begin
  #Delete Leave
  api_instance.delete_leave(employer_id, employee_id, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LeaveApi->delete_leave: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **employee_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)| The Id of the Leave you want to delete. | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_document_leave**
> String get_document_leave(employer_id, employee_id, id, document_id)

Get Leave Document

Gets the document specified by the documentId for the Leave specified by the Id

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

api_instance = SwaggerClient::LeaveApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
document_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Document you want to retrieve.


begin
  #Get Leave Document
  result = api_instance.get_document_leave(employer_id, employee_id, id, document_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LeaveApi->get_document_leave: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **employee_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)|  | 
 **document_id** | [**String**](.md)| The Id of the Document you want to retrieve. | 

### Return type

**String**

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_leave**
> Leave get_leave(employer_id, employee_id, id)

Get Leave

Gets the Leave specified by the Id for the Employee specified by the EmployeeId

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

api_instance = SwaggerClient::LeaveApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Leave you want to retrieve.


begin
  #Get Leave
  result = api_instance.get_leave(employer_id, employee_id, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LeaveApi->get_leave: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **employee_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)| The Id of the Leave you want to retrieve. | 

### Return type

[**Leave**](Leave.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **index_leave**
> Array&lt;Item&gt; index_leave(employer_id, employee_id)

List Leave

Lists all Leave for the Employee

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

api_instance = SwaggerClient::LeaveApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #List Leave
  result = api_instance.index_leave(employer_id, employee_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LeaveApi->index_leave: #{e}"
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



# **update_leave**
> Leave update_leave(employer_idemployee_idid, opts)

Update Leave

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

api_instance = SwaggerClient::LeaveApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Leave you want to update.
opts = { 
  body: SwaggerClient::Leave.new # Leave | 
}

begin
  #Update Leave
  result = api_instance.update_leave(employer_idemployee_idid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LeaveApi->update_leave: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **employee_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)| The Id of the Leave you want to update. | 
 **body** | [**Leave**](Leave.md)|  | [optional] 

### Return type

[**Leave**](Leave.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



