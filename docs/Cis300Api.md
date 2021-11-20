# SwaggerClient::Cis300Api

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_cis300**](Cis300Api.md#create_cis300) | **POST** /employers/{employerId}/rti/cis300/{taxYear} | Create Cis300
[**delete_cis300**](Cis300Api.md#delete_cis300) | **DELETE** /employers/{employerId}/rti/cis300/{taxYear}/{id} | Delete Cis300
[**get_cis300**](Cis300Api.md#get_cis300) | **GET** /employers/{employerId}/rti/cis300/{taxYear}/{id} | Get Cis300
[**list_cis300**](Cis300Api.md#list_cis300) | **GET** /employers/{employerId}/rti/cis300/{taxYear} | List Cis300
[**mark_as_accepted_cis300**](Cis300Api.md#mark_as_accepted_cis300) | **POST** /employers/{employerId}/rti/cis300/{taxYear}/{id}/markasaccepted | Mark as Sent
[**requiring_attention_cis300**](Cis300Api.md#requiring_attention_cis300) | **GET** /employers/{employerId}/rti/cis300/requiringattention | Cis300 Requiring Attention
[**submit_cis300**](Cis300Api.md#submit_cis300) | **POST** /employers/{employerId}/rti/cis300/{taxYear}/{id}/submit | Submit Cis300
[**update_cis300**](Cis300Api.md#update_cis300) | **PUT** /employers/{employerId}/rti/cis300/{taxYear}/{id} | Update Cis300

# **create_cis300**
> Cis300 create_cis300(employer_idtax_year, opts)

Create Cis300

A Cis300 is automatically created for each Tax Month that you pay a Subcontractor.\\n  You would only manually create one if you are intending to submit a nil return.

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

api_instance = SwaggerClient::Cis300Api.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  body: SwaggerClient::Cis300.new # Cis300 | 
}

begin
  #Create Cis300
  result = api_instance.create_cis300(employer_idtax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling Cis300Api->create_cis300: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **body** | [**Cis300**](Cis300.md)|  | [optional] 

### Return type

[**Cis300**](Cis300.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **delete_cis300**
> delete_cis300(employer_id, tax_year, id)

Delete Cis300

Not implemented, CIS300s cannot be deleted

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

api_instance = SwaggerClient::Cis300Api.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Delete Cis300
  api_instance.delete_cis300(employer_id, tax_year, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling Cis300Api->delete_cis300: #{e}"
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



# **get_cis300**
> Cis300 get_cis300(employer_id, tax_year, id)

Get Cis300

Retrieves a Cis300

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

api_instance = SwaggerClient::Cis300Api.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Get Cis300
  result = api_instance.get_cis300(employer_id, tax_year, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling Cis300Api->get_cis300: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **id** | [**String**](.md)|  | 

### Return type

[**Cis300**](Cis300.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_cis300**
> Array&lt;Item&gt; list_cis300(employer_id, tax_year)

List Cis300

Returns all Cis300s for the given tax year.

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

api_instance = SwaggerClient::Cis300Api.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 


begin
  #List Cis300
  result = api_instance.list_cis300(employer_id, tax_year)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling Cis300Api->list_cis300: #{e}"
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



# **mark_as_accepted_cis300**
> Cis300 mark_as_accepted_cis300(employer_id, tax_year, id)

Mark as Sent

Marks a Cis300 as having been sent to HMRC and accepted by them\\nYou only use this method if the request has been submitted via an external system.\\nIt will automatically be updated as Sent and/or Accepted if it's submitted via this API.

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

api_instance = SwaggerClient::Cis300Api.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Mark as Sent
  result = api_instance.mark_as_accepted_cis300(employer_id, tax_year, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling Cis300Api->mark_as_accepted_cis300: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **id** | [**String**](.md)|  | 

### Return type

[**Cis300**](Cis300.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **requiring_attention_cis300**
> Array&lt;Item&gt; requiring_attention_cis300(employer_id)

Cis300 Requiring Attention

Returns all Cis300 that have a Submission Status of NotSubmitted or ErrorResponse

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

api_instance = SwaggerClient::Cis300Api.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Cis300 Requiring Attention
  result = api_instance.requiring_attention_cis300(employer_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling Cis300Api->requiring_attention_cis300: #{e}"
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



# **submit_cis300**
> Cis300 submit_cis300(employer_id, tax_year, id)

Submit Cis300

Submits an existing Cis300 to HMRC.

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

api_instance = SwaggerClient::Cis300Api.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Submit Cis300
  result = api_instance.submit_cis300(employer_id, tax_year, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling Cis300Api->submit_cis300: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **id** | [**String**](.md)|  | 

### Return type

[**Cis300**](Cis300.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_cis300**
> Cis300 update_cis300(employer_idtax_yearid, opts)

Update Cis300

Updates an existing Cis300.

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

api_instance = SwaggerClient::Cis300Api.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  body: SwaggerClient::Cis300.new # Cis300 | 
}

begin
  #Update Cis300
  result = api_instance.update_cis300(employer_idtax_yearid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling Cis300Api->update_cis300: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **id** | [**String**](.md)|  | 
 **body** | [**Cis300**](Cis300.md)|  | [optional] 

### Return type

[**Cis300**](Cis300.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



