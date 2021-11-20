# SwaggerClient::ExbApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**annual_values_exb**](ExbApi.md#annual_values_exb) | **GET** /employers/{employerId}/rti/exb/{taxYear}/values | Annual Values
[**create_exb**](ExbApi.md#create_exb) | **POST** /employers/{employerId}/rti/exb/{taxYear} | Create EXB
[**delete_exb**](ExbApi.md#delete_exb) | **DELETE** /employers/{employerId}/rti/exb/{taxYear}/{id} | Delete EXB
[**get_exb**](ExbApi.md#get_exb) | **GET** /employers/{employerId}/rti/exb/{taxYear}/{id} | Get EXB
[**list_exb**](ExbApi.md#list_exb) | **GET** /employers/{employerId}/rti/exb/{taxYear} | List EXB
[**mark_as_accepted_exb**](ExbApi.md#mark_as_accepted_exb) | **POST** /employers/{employerId}/rti/exb/{taxYear}/{id}/markasaccepted | Mark as Sent
[**requiring_attention_exb**](ExbApi.md#requiring_attention_exb) | **GET** /employers/{employerId}/rti/exb/requiringattention | EXB Requiring Attention
[**submit_exb**](ExbApi.md#submit_exb) | **POST** /employers/{employerId}/rti/exb/{taxYear}/{id}/submit | Submit EXB
[**update_exb**](ExbApi.md#update_exb) | **PUT** /employers/{employerId}/rti/exb/{taxYear}/{id} | Update EXB

# **annual_values_exb**
> Exb annual_values_exb(employer_id, tax_year)

Annual Values

Returns an empty Exb showing the number of employees and total benefits for the year provided

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

api_instance = SwaggerClient::ExbApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 


begin
  #Annual Values
  result = api_instance.annual_values_exb(employer_id, tax_year)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExbApi->annual_values_exb: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 

### Return type

[**Exb**](Exb.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_exb**
> Eps create_exb(employer_idtax_year, opts)

Create EXB

Creates a new Expenses And Benefits submission

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

api_instance = SwaggerClient::ExbApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  body: SwaggerClient::Exb.new # Exb | 
}

begin
  #Create EXB
  result = api_instance.create_exb(employer_idtax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExbApi->create_exb: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **body** | [**Exb**](Exb.md)|  | [optional] 

### Return type

[**Eps**](Eps.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **delete_exb**
> delete_exb(employer_id, tax_year, id)

Delete EXB

Deletes the EXB.

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

api_instance = SwaggerClient::ExbApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Delete EXB
  api_instance.delete_exb(employer_id, tax_year, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExbApi->delete_exb: #{e}"
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



# **get_exb**
> Exb get_exb(employer_id, tax_year, id)

Get EXB

Retrieves the Expenses And Benefits submission specified

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

api_instance = SwaggerClient::ExbApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Get EXB
  result = api_instance.get_exb(employer_id, tax_year, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExbApi->get_exb: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **id** | [**String**](.md)|  | 

### Return type

[**Exb**](Exb.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_exb**
> Array&lt;Item&gt; list_exb(employer_id, tax_year)

List EXB

Returns all ExpensesAndBenefits for the given tax year.

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

api_instance = SwaggerClient::ExbApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 


begin
  #List EXB
  result = api_instance.list_exb(employer_id, tax_year)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExbApi->list_exb: #{e}"
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



# **mark_as_accepted_exb**
> Exb mark_as_accepted_exb(employer_id, tax_year, id)

Mark as Sent

Marks an Expenses And Benefits submission as having been sent to HMRC and accepted by them\\nYou would only use this method if the EXB had been submitted via an external system.\\nIt will automatically be updated as Sent and/or Accepted if it's submitted via this API.

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

api_instance = SwaggerClient::ExbApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Mark as Sent
  result = api_instance.mark_as_accepted_exb(employer_id, tax_year, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExbApi->mark_as_accepted_exb: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **id** | [**String**](.md)|  | 

### Return type

[**Exb**](Exb.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **requiring_attention_exb**
> Array&lt;Item&gt; requiring_attention_exb(employer_id)

EXB Requiring Attention

Returns all Expenses And Benefits submissions that have a Submission Status of NotSubmitted or ErrorResponse

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

api_instance = SwaggerClient::ExbApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #EXB Requiring Attention
  result = api_instance.requiring_attention_exb(employer_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExbApi->requiring_attention_exb: #{e}"
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



# **submit_exb**
> Exb submit_exb(employer_id, tax_year, id)

Submit EXB

Submits an existing Expenses And Benefits submission to HMRC.

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

api_instance = SwaggerClient::ExbApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Submit EXB
  result = api_instance.submit_exb(employer_id, tax_year, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExbApi->submit_exb: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **id** | [**String**](.md)|  | 

### Return type

[**Exb**](Exb.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_exb**
> Exb update_exb(employer_idtax_yearid, opts)

Update EXB

Updates an existing Expenses And Benefits submission.

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

api_instance = SwaggerClient::ExbApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  body: SwaggerClient::Exb.new # Exb | 
}

begin
  #Update EXB
  result = api_instance.update_exb(employer_idtax_yearid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExbApi->update_exb: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **id** | [**String**](.md)|  | 
 **body** | [**Exb**](Exb.md)|  | [optional] 

### Return type

[**Exb**](Exb.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



