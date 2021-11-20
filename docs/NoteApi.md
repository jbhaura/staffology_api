# SwaggerClient::NoteApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_document_note**](NoteApi.md#add_document_note) | **POST** /employers/{employerId}/employees/{employeeId}/notes/{id}/documents | Add Document
[**create_note**](NoteApi.md#create_note) | **POST** /employers/{employerId}/employees/{employeeId}/notes | Create Note
[**delete_document_note**](NoteApi.md#delete_document_note) | **DELETE** /employers/{employerId}/employees/{employeeId}/notes/{id}/documents/{documentId} | Delete Note Document
[**delete_note**](NoteApi.md#delete_note) | **DELETE** /employers/{employerId}/employees/{employeeId}/notes/{id} | Delete Note
[**get_document_note**](NoteApi.md#get_document_note) | **GET** /employers/{employerId}/employees/{employeeId}/notes/{id}/documents/{documentId} | Get Note Document
[**get_note**](NoteApi.md#get_note) | **GET** /employers/{employerId}/employees/{employeeId}/notes/{id} | Get Note
[**index_note**](NoteApi.md#index_note) | **GET** /employers/{employerId}/employees/{employeeId}/notes | List Notes
[**update_note**](NoteApi.md#update_note) | **PUT** /employers/{employerId}/employees/{employeeId}/notes/{id} | Update Note

# **add_document_note**
> add_document_note(employer_idemployee_idid, opts)

Add Document

Adds document to the Note

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

api_instance = SwaggerClient::NoteApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Note you want to attach documents to
opts = { 
  file: 'file_example' # String | 
}

begin
  #Add Document
  api_instance.add_document_note(employer_idemployee_idid, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling NoteApi->add_document_note: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **employee_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)| The Id of the Note you want to attach documents to | 
 **file** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined



# **create_note**
> create_note(employer_idemployee_id, opts)

Create Note

Creates a Note for the Employee

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

api_instance = SwaggerClient::NoteApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  body: SwaggerClient::Note.new # Note | 
}

begin
  #Create Note
  api_instance.create_note(employer_idemployee_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling NoteApi->create_note: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **employee_id** | [**String**](.md)|  | 
 **body** | [**Note**](Note.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined



# **delete_document_note**
> delete_document_note(employer_id, employee_id, id, document_id)

Delete Note Document

Deletes the document specified by the documentId for the Note specified by the Id

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

api_instance = SwaggerClient::NoteApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
document_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Document you want to delete.


begin
  #Delete Note Document
  api_instance.delete_document_note(employer_id, employee_id, id, document_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling NoteApi->delete_document_note: #{e}"
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



# **delete_note**
> delete_note(employer_id, employee_id, id)

Delete Note

Deletes the Note specified by the Id for the Employee specified by the EmployeeId

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

api_instance = SwaggerClient::NoteApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Note you want to delete.


begin
  #Delete Note
  api_instance.delete_note(employer_id, employee_id, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling NoteApi->delete_note: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **employee_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)| The Id of the Note you want to delete. | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_document_note**
> String get_document_note(employer_id, employee_id, id, document_id)

Get Note Document

Gets the document specified by the documentId for the Note specified by the Id

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

api_instance = SwaggerClient::NoteApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
document_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Document you want to retrieve.


begin
  #Get Note Document
  result = api_instance.get_document_note(employer_id, employee_id, id, document_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling NoteApi->get_document_note: #{e}"
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



# **get_note**
> Note get_note(employer_id, employee_id, id)

Get Note

Gets the Note specified by the Id for the Employee specified by the EmployeeId

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

api_instance = SwaggerClient::NoteApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Note you want to retrieve.


begin
  #Get Note
  result = api_instance.get_note(employer_id, employee_id, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling NoteApi->get_note: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **employee_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)| The Id of the Note you want to retrieve. | 

### Return type

[**Note**](Note.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **index_note**
> Array&lt;Item&gt; index_note(employer_id, employee_id)

List Notes

Lists all Note for the Employee

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

api_instance = SwaggerClient::NoteApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #List Notes
  result = api_instance.index_note(employer_id, employee_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling NoteApi->index_note: #{e}"
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



# **update_note**
> Note update_note(employer_idemployee_idid, opts)

Update Note

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

api_instance = SwaggerClient::NoteApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Note you want to update.
opts = { 
  body: SwaggerClient::Note.new # Note | 
}

begin
  #Update Note
  result = api_instance.update_note(employer_idemployee_idid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling NoteApi->update_note: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **employee_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)| The Id of the Note you want to update. | 
 **body** | [**Note**](Note.md)|  | [optional] 

### Return type

[**Note**](Note.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



