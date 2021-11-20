# SwaggerClient::ProcessingNoteApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_document_processing_note**](ProcessingNoteApi.md#add_document_processing_note) | **POST** /employers/{employerId}/payrun/{id}/documents | Add Document
[**create_processing_note**](ProcessingNoteApi.md#create_processing_note) | **POST** /employers/{employerId}/payrun/{taxYear}/{payPeriod}/{periodNumber}/processingnotes | Create ProcessingNote
[**delete_document_processing_note**](ProcessingNoteApi.md#delete_document_processing_note) | **DELETE** /employers/{employerId}/payrun/{id}/documents/{documentId} | Delete ProcessingNote Document
[**get_document_processing_note**](ProcessingNoteApi.md#get_document_processing_note) | **GET** /employers/{employerId}/payrun/{id}/documents/{documentId} | Get ProcessingNote Document
[**get_processing_note**](ProcessingNoteApi.md#get_processing_note) | **GET** /employers/{employerId}/payrun/{taxYear}/{payPeriod}/{periodNumber}/processingnotes/{id} | Get a ProcessingNote
[**list_processing_note**](ProcessingNoteApi.md#list_processing_note) | **GET** /employers/{employerId}/payrun/{taxYear}/{payPeriod}/{periodNumber}/processingnotes | List ProcessingNotes for a PayRun

# **add_document_processing_note**
> add_document_processing_note(employer_idid, opts)

Add Document

Adds document to the ProcessingNote

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

api_instance = SwaggerClient::ProcessingNoteApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the ProcessingNote you want to attach documents to
opts = { 
  file: 'file_example' # String | 
}

begin
  #Add Document
  api_instance.add_document_processing_note(employer_idid, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProcessingNoteApi->add_document_processing_note: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)| The Id of the ProcessingNote you want to attach documents to | 
 **file** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined



# **create_processing_note**
> ProcessingNote create_processing_note(employer_idtax_yearpay_periodperiod_number, opts)

Create ProcessingNote

Creates a Processing Note for the PayRun.\\n  You must have Bureau Features enabled and the payrun must be editable.

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

api_instance = SwaggerClient::ProcessingNoteApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
period_number = 56 # Integer | 
opts = { 
  body: SwaggerClient::ProcessingNote.new # ProcessingNote | 
  ordinal: 1 # Integer | 
}

begin
  #Create ProcessingNote
  result = api_instance.create_processing_note(employer_idtax_yearpay_periodperiod_number, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProcessingNoteApi->create_processing_note: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **period_number** | **Integer**|  | 
 **body** | [**ProcessingNote**](ProcessingNote.md)|  | [optional] 
 **ordinal** | **Integer**|  | [optional] [default to 1]

### Return type

[**ProcessingNote**](ProcessingNote.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **delete_document_processing_note**
> delete_document_processing_note(employer_id, id, document_id)

Delete ProcessingNote Document

Deletes the document specified by the documentId for the ProcessingNote specified by the Id

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

api_instance = SwaggerClient::ProcessingNoteApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
document_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Document you want to delete.


begin
  #Delete ProcessingNote Document
  api_instance.delete_document_processing_note(employer_id, id, document_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProcessingNoteApi->delete_document_processing_note: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)|  | 
 **document_id** | [**String**](.md)| The Id of the Document you want to delete. | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_document_processing_note**
> String get_document_processing_note(employer_id, id, document_id)

Get ProcessingNote Document

Gets the document specified by the documentId for the ProcessingNote specified by the Id

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

api_instance = SwaggerClient::ProcessingNoteApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
document_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Document you want to retrieve.


begin
  #Get ProcessingNote Document
  result = api_instance.get_document_processing_note(employer_id, id, document_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProcessingNoteApi->get_document_processing_note: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)|  | 
 **document_id** | [**String**](.md)| The Id of the Document you want to retrieve. | 

### Return type

**String**

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_processing_note**
> ProcessingNote get_processing_note(employer_id, pay_period, period_number, tax_year, id, opts)

Get a ProcessingNote

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

api_instance = SwaggerClient::ProcessingNoteApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
period_number = 56 # Integer | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  ordinal: 1 # Integer | 
}

begin
  #Get a ProcessingNote
  result = api_instance.get_processing_note(employer_id, pay_period, period_number, tax_year, id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProcessingNoteApi->get_processing_note: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **period_number** | **Integer**|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **id** | [**String**](.md)|  | 
 **ordinal** | **Integer**|  | [optional] [default to 1]

### Return type

[**ProcessingNote**](ProcessingNote.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_processing_note**
> Array&lt;Item&gt; list_processing_note(employer_id, pay_period, period_number, tax_year, opts)

List ProcessingNotes for a PayRun

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

api_instance = SwaggerClient::ProcessingNoteApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
period_number = 56 # Integer | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  ordinal: 1, # Integer | 
  payrun_entry_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Optionally filter ProcessingNotes to just those for the specified PayRunEntry
}

begin
  #List ProcessingNotes for a PayRun
  result = api_instance.list_processing_note(employer_id, pay_period, period_number, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProcessingNoteApi->list_processing_note: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **period_number** | **Integer**|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **ordinal** | **Integer**|  | [optional] [default to 1]
 **payrun_entry_id** | [**String**](.md)| Optionally filter ProcessingNotes to just those for the specified PayRunEntry | [optional] 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



