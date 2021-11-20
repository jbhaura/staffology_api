# SwaggerClient::ReportPackApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_report_pack**](ReportPackApi.md#create_report_pack) | **POST** /employers/{employerId}/reports/packs | Create ReportPack
[**delete_report_pack**](ReportPackApi.md#delete_report_pack) | **DELETE** /employers/{employerId}/reports/packs/{id} | Delete ReportPack
[**get_report_pack**](ReportPackApi.md#get_report_pack) | **GET** /employers/{employerId}/reports/packs/{id} | Get ReportPack
[**index_report_pack**](ReportPackApi.md#index_report_pack) | **GET** /employers/{employerId}/reports/packs | List ReportPacks
[**update_report_pack**](ReportPackApi.md#update_report_pack) | **PUT** /employers/{employerId}/reports/packs/{id} | Update ReportPack

# **create_report_pack**
> ReportPack create_report_pack(employer_id, opts)

Create ReportPack

Creates a new ReportPack for the Employer.

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

api_instance = SwaggerClient::ReportPackApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  body: SwaggerClient::ReportPack.new # ReportPack | 
}

begin
  #Create ReportPack
  result = api_instance.create_report_pack(employer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportPackApi->create_report_pack: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **body** | [**ReportPack**](ReportPack.md)|  | [optional] 

### Return type

[**ReportPack**](ReportPack.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **delete_report_pack**
> delete_report_pack(employer_id, id)

Delete ReportPack

Deletes the specified ReportPack.

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

api_instance = SwaggerClient::ReportPackApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Delete ReportPack
  api_instance.delete_report_pack(employer_id, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportPackApi->delete_report_pack: #{e}"
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



# **get_report_pack**
> ReportPack get_report_pack(employer_id, id)

Get ReportPack

Gets the ReportPack specified.

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

api_instance = SwaggerClient::ReportPackApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the ReportPack belongs.
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Get ReportPack
  result = api_instance.get_report_pack(employer_id, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportPackApi->get_report_pack: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the ReportPack belongs. | 
 **id** | [**String**](.md)|  | 

### Return type

[**ReportPack**](ReportPack.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **index_report_pack**
> Array&lt;Item&gt; index_report_pack(employer_id)

List ReportPacks

Lists all ReportPacks for an Employer.

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

api_instance = SwaggerClient::ReportPackApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer for which you want to list ReportPacks


begin
  #List ReportPacks
  result = api_instance.index_report_pack(employer_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportPackApi->index_report_pack: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer for which you want to list ReportPacks | 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_report_pack**
> ReportPack update_report_pack(employer_idid, opts)

Update ReportPack

Updates a ReportPack for the Employer.

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

api_instance = SwaggerClient::ReportPackApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  body: SwaggerClient::ReportPack.new # ReportPack | 
}

begin
  #Update ReportPack
  result = api_instance.update_report_pack(employer_idid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportPackApi->update_report_pack: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)|  | 
 **body** | [**ReportPack**](ReportPack.md)|  | [optional] 

### Return type

[**ReportPack**](ReportPack.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



