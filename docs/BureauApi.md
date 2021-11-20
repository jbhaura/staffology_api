# SwaggerClient::BureauApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**employers_bureau**](BureauApi.md#employers_bureau) | **GET** /bureau/employers | List Employers
[**get_report_pack_bureau**](BureauApi.md#get_report_pack_bureau) | **GET** /employers/{employerId}/bureau/settings/reportpack | Get BureauSettings ReportPack
[**get_settings_bureau**](BureauApi.md#get_settings_bureau) | **GET** /employers/{employerId}/bureau/settings | Get BureauSettings
[**processor_users_bureau**](BureauApi.md#processor_users_bureau) | **GET** /bureau/processors | List Allocated Processors
[**update_settings_bureau**](BureauApi.md#update_settings_bureau) | **PUT** /employers/{employerId}/bureau/settings | Update BureauSettings

# **employers_bureau**
> Array&lt;Item&gt; employers_bureau(opts)

List Employers

Returns a list of Employers.\\n  This differs from the main Employer list end point in that the metadata included is more relevant to Bureau activities  It also gives you the ability to filter based on the allocated Processor.\\n  Note: an entry is returned for each PaySchedule. So if the employer has both a Monthly and a Weekly PaySchedule then they'll appear twice

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

api_instance = SwaggerClient::BureauApi.new
opts = { 
  processor: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Processor (User) you want to restrict the list to.
}

begin
  #List Employers
  result = api_instance.employers_bureau(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BureauApi->employers_bureau: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **processor** | [**String**](.md)| The Id of the Processor (User) you want to restrict the list to. | [optional] 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_report_pack_bureau**
> ReportPack get_report_pack_bureau(employer_id)

Get BureauSettings ReportPack

If a ReportPack is specified in the BureauSettings then it is returned, otherwise an empty ReportPAck is returned

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

api_instance = SwaggerClient::BureauApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Get BureauSettings ReportPack
  result = api_instance.get_report_pack_bureau(employer_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BureauApi->get_report_pack_bureau: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 

### Return type

[**ReportPack**](ReportPack.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_settings_bureau**
> BureauSettings get_settings_bureau(employer_id)

Get BureauSettings

Returns the BureauSettings for the Employer

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

api_instance = SwaggerClient::BureauApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Get BureauSettings
  result = api_instance.get_settings_bureau(employer_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BureauApi->get_settings_bureau: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 

### Return type

[**BureauSettings**](BureauSettings.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **processor_users_bureau**
> Array&lt;Item&gt; processor_users_bureau

List Allocated Processors

Returns a list of Users that have one or more Employers allocated to them as the Processor

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

api_instance = SwaggerClient::BureauApi.new

begin
  #List Allocated Processors
  result = api_instance.processor_users_bureau
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BureauApi->processor_users_bureau: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_settings_bureau**
> BureauSettings update_settings_bureau(employer_id, opts)

Update BureauSettings

Updates the BureaSettings for the Employer

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

api_instance = SwaggerClient::BureauApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  body: SwaggerClient::BureauSettings.new # BureauSettings | 
}

begin
  #Update BureauSettings
  result = api_instance.update_settings_bureau(employer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BureauApi->update_settings_bureau: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **body** | [**BureauSettings**](BureauSettings.md)|  | [optional] 

### Return type

[**BureauSettings**](BureauSettings.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



