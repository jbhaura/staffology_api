# SwaggerClient::DpsApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apply_dps**](DpsApi.md#apply_dps) | **PUT** /employers/{employerId}/dps/notices/{id} | Apply Notice
[**check_for_notices_dps**](DpsApi.md#check_for_notices_dps) | **POST** /employers/{employerId}/dps/notices | Check for new Notices
[**delete_all_dps**](DpsApi.md#delete_all_dps) | **DELETE** /employers/{employerId}/dps/notices | Delete All Notices
[**delete_dps**](DpsApi.md#delete_dps) | **DELETE** /employers/{employerId}/dps/notices/{id} | Delete Notice
[**get_dps**](DpsApi.md#get_dps) | **GET** /employers/{employerId}/dps/notices/{id} | Get Notice
[**get_dps_settings_dps**](DpsApi.md#get_dps_settings_dps) | **GET** /employers/{employerId}/dps/settings | Get DPS Settings
[**list_notices_dps**](DpsApi.md#list_notices_dps) | **GET** /employers/{employerId}/dps/notices | List Notices
[**parse_xml_dps**](DpsApi.md#parse_xml_dps) | **POST** /employers/{employerId}/dps/notices/xml | Parse notices from XML
[**update_dps_settings_dps**](DpsApi.md#update_dps_settings_dps) | **PUT** /employers/{employerId}/dps/settings | Update DPS Settings

# **apply_dps**
> DpsNotice apply_dps(employer_id, id)

Apply Notice

Applies the specified DPS Notice.

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

api_instance = SwaggerClient::DpsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the DpsNotice you want to apply.


begin
  #Apply Notice
  result = api_instance.apply_dps(employer_id, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DpsApi->apply_dps: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)| The Id of the DpsNotice you want to apply. | 

### Return type

[**DpsNotice**](DpsNotice.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **check_for_notices_dps**
> Integer check_for_notices_dps(employer_id)

Check for new Notices

Checks with HMRC for new notices. Returns an integer showing how many new notices were found

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

api_instance = SwaggerClient::DpsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Check for new Notices
  result = api_instance.check_for_notices_dps(employer_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DpsApi->check_for_notices_dps: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 

### Return type

**Integer**

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_all_dps**
> delete_all_dps(employer_id)

Delete All Notices

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

api_instance = SwaggerClient::DpsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer that you want to delete all notices for.


begin
  #Delete All Notices
  api_instance.delete_all_dps(employer_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DpsApi->delete_all_dps: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer that you want to delete all notices for. | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_dps**
> delete_dps(employer_id, id)

Delete Notice

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

api_instance = SwaggerClient::DpsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the DpsNotice belongs.
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the DsNotice you want to delete.


begin
  #Delete Notice
  api_instance.delete_dps(employer_id, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DpsApi->delete_dps: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the DpsNotice belongs. | 
 **id** | [**String**](.md)| The Id of the DsNotice you want to delete. | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_dps**
> DpsNotice get_dps(employer_id, id)

Get Notice

Returns the specified DPS Notice.

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

api_instance = SwaggerClient::DpsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the DpsNotice you want to retrieve.


begin
  #Get Notice
  result = api_instance.get_dps(employer_id, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DpsApi->get_dps: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)| The Id of the DpsNotice you want to retrieve. | 

### Return type

[**DpsNotice**](DpsNotice.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_dps_settings_dps**
> DpsSettings get_dps_settings_dps(employer_id)

Get DPS Settings

Returns the DpsSettings for the Employer

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

api_instance = SwaggerClient::DpsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer


begin
  #Get DPS Settings
  result = api_instance.get_dps_settings_dps(employer_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DpsApi->get_dps_settings_dps: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer | 

### Return type

[**DpsSettings**](DpsSettings.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_notices_dps**
> Array&lt;Item&gt; list_notices_dps(employer_id, opts)

List Notices

Lists DPS Notices.

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

api_instance = SwaggerClient::DpsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  page_num: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  #List Notices
  result = api_instance.list_notices_dps(employer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DpsApi->list_notices_dps: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **page_num** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **parse_xml_dps**
> Integer parse_xml_dps(employer_id, opts)

Parse notices from XML

Checks the supplied XML string for notices. They're then processed in the same was as if received from HMRC.  Only used for testing the parsing of DPS XML.\\n  Returns an integer showing how many new notices were found

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

api_instance = SwaggerClient::DpsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  body: 'body_example' # String | 
}

begin
  #Parse notices from XML
  result = api_instance.parse_xml_dps(employer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DpsApi->parse_xml_dps: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **body** | [**String**](String.md)|  | [optional] 

### Return type

**Integer**

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **update_dps_settings_dps**
> DpsSettings update_dps_settings_dps(employer_id, opts)

Update DPS Settings

Updates the DpsSettings for the Employer

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

api_instance = SwaggerClient::DpsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer
opts = { 
  body: SwaggerClient::DpsSettings.new # DpsSettings | 
}

begin
  #Update DPS Settings
  result = api_instance.update_dps_settings_dps(employer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DpsApi->update_dps_settings_dps: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer | 
 **body** | [**DpsSettings**](DpsSettings.md)|  | [optional] 

### Return type

[**DpsSettings**](DpsSettings.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



