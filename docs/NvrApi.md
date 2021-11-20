# SwaggerClient::NvrApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_nvr**](NvrApi.md#create_nvr) | **POST** /employers/{employerId}/rti/nvr/{taxYear} | Create NVR
[**delete_nvr**](NvrApi.md#delete_nvr) | **DELETE** /employers/{employerId}/rti/nvr/{taxYear}/{id} | Delete NVR
[**get_nvr**](NvrApi.md#get_nvr) | **GET** /employers/{employerId}/rti/nvr/{taxYear}/{id} | Get NVR
[**list_nvr**](NvrApi.md#list_nvr) | **GET** /employers/{employerId}/rti/nvr/{taxYear} | List NVR
[**mark_as_accepted_nvr**](NvrApi.md#mark_as_accepted_nvr) | **POST** /employers/{employerId}/rti/nvr/{taxYear}/{id}/markasaccepted | Mark as Sent
[**requiring_attention_nvr**](NvrApi.md#requiring_attention_nvr) | **GET** /employers/{employerId}/rti/nvr/requiringattention | NVR Requiring Attention
[**submit_nvr**](NvrApi.md#submit_nvr) | **POST** /employers/{employerId}/rti/nvr/{taxYear}/{id}/submit | Submit an existing NVR
[**update_nvr**](NvrApi.md#update_nvr) | **PUT** /employers/{employerId}/rti/nvr/{taxYear}/{id} | Update NVR

# **create_nvr**
> Nvr create_nvr(employer_idtax_year, opts)

Create NVR

Creates a new NiNo Verification Request.

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

api_instance = SwaggerClient::NvrApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  body: SwaggerClient::Nvr.new # Nvr | 
}

begin
  #Create NVR
  result = api_instance.create_nvr(employer_idtax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling NvrApi->create_nvr: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **body** | [**Nvr**](Nvr.md)|  | [optional] 

### Return type

[**Nvr**](Nvr.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **delete_nvr**
> delete_nvr(employer_id, tax_year, id)

Delete NVR

Deletes the NVR.

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

api_instance = SwaggerClient::NvrApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Delete NVR
  api_instance.delete_nvr(employer_id, tax_year, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling NvrApi->delete_nvr: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **id** | [**String**](.md)|  | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_nvr**
> Nvr get_nvr(employer_id, tax_year, id)

Get NVR

Retrieves the NiNo Verification Request.

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

api_instance = SwaggerClient::NvrApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Get NVR
  result = api_instance.get_nvr(employer_id, tax_year, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling NvrApi->get_nvr: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **id** | [**String**](.md)|  | 

### Return type

[**Nvr**](Nvr.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_nvr**
> Array&lt;Item&gt; list_nvr(employer_id, tax_year)

List NVR

Returns all NiNo Verification Requests for the given tax year.

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

api_instance = SwaggerClient::NvrApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 


begin
  #List NVR
  result = api_instance.list_nvr(employer_id, tax_year)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling NvrApi->list_nvr: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **mark_as_accepted_nvr**
> Nvr mark_as_accepted_nvr(employer_id, tax_year, id)

Mark as Sent

Marks a  NiNo Verification Request as having been sent to HMRC and accepted by them\\nYou only use this method if the NVR has been submitted via an external system.\\nIt will automatically be updated as Sent and/or Accepted if it's submitted via this API.

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

api_instance = SwaggerClient::NvrApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Mark as Sent
  result = api_instance.mark_as_accepted_nvr(employer_id, tax_year, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling NvrApi->mark_as_accepted_nvr: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **id** | [**String**](.md)|  | 

### Return type

[**Nvr**](Nvr.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **requiring_attention_nvr**
> Array&lt;Item&gt; requiring_attention_nvr(employer_id)

NVR Requiring Attention

Returns all NiNo Verification Requests that have a Submission Status of NotSubmitted or ErrorResponse

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

api_instance = SwaggerClient::NvrApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #NVR Requiring Attention
  result = api_instance.requiring_attention_nvr(employer_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling NvrApi->requiring_attention_nvr: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **submit_nvr**
> Nvr submit_nvr(employer_id, tax_year, id)

Submit an existing NVR

Submits an existing NiNo Verification Request to HMRC.

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

api_instance = SwaggerClient::NvrApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Submit an existing NVR
  result = api_instance.submit_nvr(employer_id, tax_year, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling NvrApi->submit_nvr: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **id** | [**String**](.md)|  | 

### Return type

[**Nvr**](Nvr.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_nvr**
> Nvr update_nvr(employer_idtax_yearid, opts)

Update NVR

Updates an existing NiNo Verification Request.

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

api_instance = SwaggerClient::NvrApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  body: SwaggerClient::Nvr.new # Nvr | 
}

begin
  #Update NVR
  result = api_instance.update_nvr(employer_idtax_yearid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling NvrApi->update_nvr: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **id** | [**String**](.md)|  | 
 **body** | [**Nvr**](Nvr.md)|  | [optional] 

### Return type

[**Nvr**](Nvr.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



