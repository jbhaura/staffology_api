# SwaggerClient::ImportApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_payments_csv_mapping_import**](ImportApi.md#create_payments_csv_mapping_import) | **POST** /employers/{employerId}/import/payments/mappings | Create PaymentsCsvMapping
[**delete_payment_csv_mapping_import**](ImportApi.md#delete_payment_csv_mapping_import) | **DELETE** /employers/{employerId}/import/payments/mappings/{id} | Delete PaymentsCsvMapping
[**list_payments_csv_mappings_import**](ImportApi.md#list_payments_csv_mappings_import) | **GET** /employers/{employerId}/import/payments/mappings | List PaymentsCsvMappings
[**payments_csv_mapping_csv_file_import**](ImportApi.md#payments_csv_mapping_csv_file_import) | **GET** /employers/{employerId}/import/payments/mappings/{id}/csv | Get PaymentsCsvMapping CSV File
[**payments_csv_mapping_import**](ImportApi.md#payments_csv_mapping_import) | **GET** /employers/{employerId}/import/payments/mappings/{id} | Get PaymentsCsvMapping
[**update_payments_csv_mapping_import**](ImportApi.md#update_payments_csv_mapping_import) | **PUT** /employers/{employerId}/import/payments/mappings/{id} | Update PaymentsCsvMapping

# **create_payments_csv_mapping_import**
> create_payments_csv_mapping_import(employer_id, opts)

Create PaymentsCsvMapping

Creates a new PaymentsCsvMapping for the Employer.

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

api_instance = SwaggerClient::ImportApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  body: SwaggerClient::PaymentsCsvMapping.new # PaymentsCsvMapping | 
}

begin
  #Create PaymentsCsvMapping
  api_instance.create_payments_csv_mapping_import(employer_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ImportApi->create_payments_csv_mapping_import: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **body** | [**PaymentsCsvMapping**](PaymentsCsvMapping.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined



# **delete_payment_csv_mapping_import**
> delete_payment_csv_mapping_import(employer_id, id)

Delete PaymentsCsvMapping

Deletes the specified PaymentsCsvMapping.

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

api_instance = SwaggerClient::ImportApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Delete PaymentsCsvMapping
  api_instance.delete_payment_csv_mapping_import(employer_id, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ImportApi->delete_payment_csv_mapping_import: #{e}"
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



# **list_payments_csv_mappings_import**
> Array&lt;Item&gt; list_payments_csv_mappings_import(employer_id)

List PaymentsCsvMappings

Lists all PaymentsCsvMappings for an Employer.

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

api_instance = SwaggerClient::ImportApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer for which you want to list mappings


begin
  #List PaymentsCsvMappings
  result = api_instance.list_payments_csv_mappings_import(employer_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ImportApi->list_payments_csv_mappings_import: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer for which you want to list mappings | 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **payments_csv_mapping_csv_file_import**
> ReportResponse payments_csv_mapping_csv_file_import(employer_id, id)

Get PaymentsCsvMapping CSV File

Gets a CSV file in the format needed to import for the specified PaymentsCsvMapping\\n  This is only available for PaymentsCsvMapping with a Type of ColumnBased

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

api_instance = SwaggerClient::ImportApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the PaymentCsvMapping belongs.
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Get PaymentsCsvMapping CSV File
  result = api_instance.payments_csv_mapping_csv_file_import(employer_id, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ImportApi->payments_csv_mapping_csv_file_import: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the PaymentCsvMapping belongs. | 
 **id** | [**String**](.md)|  | 

### Return type

[**ReportResponse**](ReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **payments_csv_mapping_import**
> PaymentsCsvMapping payments_csv_mapping_import(employer_id, id)

Get PaymentsCsvMapping

Gets the PaymentsCsvMapping specified.

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

api_instance = SwaggerClient::ImportApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the PaymentCsvMapping belongs.
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Get PaymentsCsvMapping
  result = api_instance.payments_csv_mapping_import(employer_id, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ImportApi->payments_csv_mapping_import: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the PaymentCsvMapping belongs. | 
 **id** | [**String**](.md)|  | 

### Return type

[**PaymentsCsvMapping**](PaymentsCsvMapping.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_payments_csv_mapping_import**
> PaymentsCsvMapping update_payments_csv_mapping_import(employer_idid, opts)

Update PaymentsCsvMapping

Updates the PaymentsCsvMapping specified.

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

api_instance = SwaggerClient::ImportApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the PaymentsCsvMapping belongs.
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  body: SwaggerClient::PaymentsCsvMapping.new # PaymentsCsvMapping | 
}

begin
  #Update PaymentsCsvMapping
  result = api_instance.update_payments_csv_mapping_import(employer_idid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ImportApi->update_payments_csv_mapping_import: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the PaymentsCsvMapping belongs. | 
 **id** | [**String**](.md)|  | 
 **body** | [**PaymentsCsvMapping**](PaymentsCsvMapping.md)|  | [optional] 

### Return type

[**PaymentsCsvMapping**](PaymentsCsvMapping.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



