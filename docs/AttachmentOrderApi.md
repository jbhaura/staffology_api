# SwaggerClient::AttachmentOrderApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_document_attachment_order**](AttachmentOrderApi.md#add_document_attachment_order) | **POST** /employers/{employerId}/employees/{employeeId}/attachmentorders/{id}/documents | Add Document
[**create_attachment_order**](AttachmentOrderApi.md#create_attachment_order) | **POST** /employers/{employerId}/employees/{employeeId}/attachmentorders | Create AttachmentOrder
[**delete_attachment_order**](AttachmentOrderApi.md#delete_attachment_order) | **DELETE** /employers/{employerId}/employees/{employeeId}/attachmentorders/{id} | Delete AttachmentOrder
[**delete_document_attachment_order**](AttachmentOrderApi.md#delete_document_attachment_order) | **DELETE** /employers/{employerId}/employees/{employeeId}/attachmentorders/{id}/documents/{documentId} | Delete AttachmentOrder Document
[**get_attachment_order**](AttachmentOrderApi.md#get_attachment_order) | **GET** /employers/{employerId}/employees/{employeeId}/attachmentorders/{id} | Get AttachmentOrder
[**get_document_attachment_order**](AttachmentOrderApi.md#get_document_attachment_order) | **GET** /employers/{employerId}/employees/{employeeId}/attachmentorders/{id}/documents/{documentId} | Get AttachmentOrder Document
[**index_attachment_order**](AttachmentOrderApi.md#index_attachment_order) | **GET** /employers/{employerId}/employees/{employeeId}/attachmentorders | List AttachmentOrders
[**payments_attachment_order**](AttachmentOrderApi.md#payments_attachment_order) | **GET** /employers/{employerId}/employees/{employeeId}/attachmentorders/payments/{taxYear} | Get Payments
[**update_attachment_order**](AttachmentOrderApi.md#update_attachment_order) | **PUT** /employers/{employerId}/employees/{employeeId}/attachmentorders/{id} | Update AttachmentOrder

# **add_document_attachment_order**
> add_document_attachment_order(employer_idemployee_idid, opts)

Add Document

Adds document to the AttachmentOrder

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

api_instance = SwaggerClient::AttachmentOrderApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the AttachmentOrder you want to attach documents to
opts = { 
  file: 'file_example' # String | 
}

begin
  #Add Document
  api_instance.add_document_attachment_order(employer_idemployee_idid, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AttachmentOrderApi->add_document_attachment_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **employee_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)| The Id of the AttachmentOrder you want to attach documents to | 
 **file** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined



# **create_attachment_order**
> create_attachment_order(employer_idemployee_id, opts)

Create AttachmentOrder

Creates an AttachmentOrder for the Employee

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

api_instance = SwaggerClient::AttachmentOrderApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  body: SwaggerClient::AttachmentOrder.new # AttachmentOrder | 
}

begin
  #Create AttachmentOrder
  api_instance.create_attachment_order(employer_idemployee_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AttachmentOrderApi->create_attachment_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **employee_id** | [**String**](.md)|  | 
 **body** | [**AttachmentOrder**](AttachmentOrder.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined



# **delete_attachment_order**
> delete_attachment_order(employer_id, employee_id, id)

Delete AttachmentOrder

Deletes the AttachmentOrder specified by the Id for the Employee specified by the EmployeeId

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

api_instance = SwaggerClient::AttachmentOrderApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the AttachmentOrder you want to delete.


begin
  #Delete AttachmentOrder
  api_instance.delete_attachment_order(employer_id, employee_id, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AttachmentOrderApi->delete_attachment_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **employee_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)| The Id of the AttachmentOrder you want to delete. | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_document_attachment_order**
> delete_document_attachment_order(employer_id, employee_id, id, document_id)

Delete AttachmentOrder Document

Deletes the document specified by the documentId for the AttachmentOrder specified by the Id

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

api_instance = SwaggerClient::AttachmentOrderApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
document_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Document you want to delete.


begin
  #Delete AttachmentOrder Document
  api_instance.delete_document_attachment_order(employer_id, employee_id, id, document_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AttachmentOrderApi->delete_document_attachment_order: #{e}"
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



# **get_attachment_order**
> AttachmentOrder get_attachment_order(employer_id, employee_id, id)

Get AttachmentOrder

Gets the AttachmentOrder specified by the Id for the Employee specified by the EmployeeId

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

api_instance = SwaggerClient::AttachmentOrderApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the AttachmentOrder you want to retrieve.


begin
  #Get AttachmentOrder
  result = api_instance.get_attachment_order(employer_id, employee_id, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AttachmentOrderApi->get_attachment_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **employee_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)| The Id of the AttachmentOrder you want to retrieve. | 

### Return type

[**AttachmentOrder**](AttachmentOrder.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_document_attachment_order**
> String get_document_attachment_order(employer_id, employee_id, id, document_id)

Get AttachmentOrder Document

Gets the document specified by the documentId for the AttachmentOrder specified by the Id

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

api_instance = SwaggerClient::AttachmentOrderApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
document_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Document you want to retrieve.


begin
  #Get AttachmentOrder Document
  result = api_instance.get_document_attachment_order(employer_id, employee_id, id, document_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AttachmentOrderApi->get_document_attachment_order: #{e}"
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



# **index_attachment_order**
> Array&lt;Item&gt; index_attachment_order(employer_id, employee_id)

List AttachmentOrders

Lists all AttachmentOrders for the Employee

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

api_instance = SwaggerClient::AttachmentOrderApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #List AttachmentOrders
  result = api_instance.index_attachment_order(employer_id, employee_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AttachmentOrderApi->index_attachment_order: #{e}"
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



# **payments_attachment_order**
> Array&lt;AttachmentOrderPayment&gt; payments_attachment_order(employer_id, employee_id, tax_year)

Get Payments

Lists all Payments made to AttachmentOrders for the Employee in the given TaxYear

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

api_instance = SwaggerClient::AttachmentOrderApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 


begin
  #Get Payments
  result = api_instance.payments_attachment_order(employer_id, employee_id, tax_year)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AttachmentOrderApi->payments_attachment_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **employee_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 

### Return type

[**Array&lt;AttachmentOrderPayment&gt;**](AttachmentOrderPayment.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_attachment_order**
> AttachmentOrder update_attachment_order(employer_idemployee_idid, opts)

Update AttachmentOrder

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

api_instance = SwaggerClient::AttachmentOrderApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the AttachmentOrder you want to update.
opts = { 
  body: SwaggerClient::AttachmentOrder.new # AttachmentOrder | 
}

begin
  #Update AttachmentOrder
  result = api_instance.update_attachment_order(employer_idemployee_idid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AttachmentOrderApi->update_attachment_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **employee_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)| The Id of the AttachmentOrder you want to update. | 
 **body** | [**AttachmentOrder**](AttachmentOrder.md)|  | [optional] 

### Return type

[**AttachmentOrder**](AttachmentOrder.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



