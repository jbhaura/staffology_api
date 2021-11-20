# SwaggerClient::CisVerificationApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_cis_verification**](CisVerificationApi.md#create_cis_verification) | **POST** /employers/{employerId}/rti/cis-verification/{taxYear} | Create CisVerificationRequest
[**delete_cis_verification**](CisVerificationApi.md#delete_cis_verification) | **DELETE** /employers/{employerId}/rti/cis-verification/{taxYear}/{id} | Delete CisVerificationRequest
[**get_cis_verification**](CisVerificationApi.md#get_cis_verification) | **GET** /employers/{employerId}/rti/cis-verification/{taxYear}/{id} | Get CisVerificationRequest
[**list_cis_verification**](CisVerificationApi.md#list_cis_verification) | **GET** /employers/{employerId}/rti/cis-verification/{taxYear} | List CisVerificationRequest
[**mark_as_accepted_cis_verification**](CisVerificationApi.md#mark_as_accepted_cis_verification) | **POST** /employers/{employerId}/rti/cis-verification/{taxYear}/{id}/markasaccepted | Mark as Sent
[**requiring_attention_cis_verification**](CisVerificationApi.md#requiring_attention_cis_verification) | **GET** /employers/{employerId}/rti/cis-verification/requiringattention | CisVerificationRequest Requiring Attention
[**submit_cis_verification**](CisVerificationApi.md#submit_cis_verification) | **POST** /employers/{employerId}/rti/cis-verification/{taxYear}/{id}/submit | Submit CisVerificationRequest
[**update_cis_verification**](CisVerificationApi.md#update_cis_verification) | **PUT** /employers/{employerId}/rti/cis-verification/{taxYear}/{id} | Update CisVerificationRequest

# **create_cis_verification**
> CisVerification create_cis_verification(employer_idtax_year, opts)

Create CisVerificationRequest

Creates a new CIS Verification Request.

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

api_instance = SwaggerClient::CisVerificationApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  body: SwaggerClient::CisVerification.new # CisVerification | 
}

begin
  #Create CisVerificationRequest
  result = api_instance.create_cis_verification(employer_idtax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CisVerificationApi->create_cis_verification: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **body** | [**CisVerification**](CisVerification.md)|  | [optional] 

### Return type

[**CisVerification**](CisVerification.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **delete_cis_verification**
> delete_cis_verification(employer_id, tax_year, id)

Delete CisVerificationRequest

Deletes the CIS Verification Request.

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

api_instance = SwaggerClient::CisVerificationApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Delete CisVerificationRequest
  api_instance.delete_cis_verification(employer_id, tax_year, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CisVerificationApi->delete_cis_verification: #{e}"
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



# **get_cis_verification**
> CisVerification get_cis_verification(employer_id, tax_year, id)

Get CisVerificationRequest

Retrieves the CIS Verification Request.

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

api_instance = SwaggerClient::CisVerificationApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Get CisVerificationRequest
  result = api_instance.get_cis_verification(employer_id, tax_year, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CisVerificationApi->get_cis_verification: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **id** | [**String**](.md)|  | 

### Return type

[**CisVerification**](CisVerification.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_cis_verification**
> Array&lt;Item&gt; list_cis_verification(employer_id, tax_year)

List CisVerificationRequest

Returns all CIS Verification Requests for the given tax year.

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

api_instance = SwaggerClient::CisVerificationApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 


begin
  #List CisVerificationRequest
  result = api_instance.list_cis_verification(employer_id, tax_year)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CisVerificationApi->list_cis_verification: #{e}"
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



# **mark_as_accepted_cis_verification**
> CisVerification mark_as_accepted_cis_verification(employer_id, tax_year, id)

Mark as Sent

Marks a CIS Verification Request as having been sent to HMRC and accepted by them\\nYou only use this method if the request has been submitted via an external system.\\nIt will automatically be updated as Sent and/or Accepted if it's submitted via this API.

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

api_instance = SwaggerClient::CisVerificationApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Mark as Sent
  result = api_instance.mark_as_accepted_cis_verification(employer_id, tax_year, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CisVerificationApi->mark_as_accepted_cis_verification: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **id** | [**String**](.md)|  | 

### Return type

[**CisVerification**](CisVerification.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **requiring_attention_cis_verification**
> Array&lt;Item&gt; requiring_attention_cis_verification(employer_id)

CisVerificationRequest Requiring Attention

Returns all CIS Verification Requests that have a Submission Status of NotSubmitted or ErrorResponse

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

api_instance = SwaggerClient::CisVerificationApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #CisVerificationRequest Requiring Attention
  result = api_instance.requiring_attention_cis_verification(employer_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CisVerificationApi->requiring_attention_cis_verification: #{e}"
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



# **submit_cis_verification**
> CisVerification submit_cis_verification(employer_id, tax_year, id)

Submit CisVerificationRequest

Submits an existing CIS Verification Request to HMRC.

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

api_instance = SwaggerClient::CisVerificationApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Submit CisVerificationRequest
  result = api_instance.submit_cis_verification(employer_id, tax_year, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CisVerificationApi->submit_cis_verification: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **id** | [**String**](.md)|  | 

### Return type

[**CisVerification**](CisVerification.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_cis_verification**
> CisVerification update_cis_verification(employer_idtax_yearid, opts)

Update CisVerificationRequest

Updates an existing CIS Verification Request.

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

api_instance = SwaggerClient::CisVerificationApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  body: SwaggerClient::CisVerification.new # CisVerification | 
}

begin
  #Update CisVerificationRequest
  result = api_instance.update_cis_verification(employer_idtax_yearid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CisVerificationApi->update_cis_verification: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **id** | [**String**](.md)|  | 
 **body** | [**CisVerification**](CisVerification.md)|  | [optional] 

### Return type

[**CisVerification**](CisVerification.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



