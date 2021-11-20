# SwaggerClient::FpsApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_fps**](FpsApi.md#create_fps) | **POST** /employers/{employerId}/rti/fps/{taxYear} | Create FPS
[**delete_fps**](FpsApi.md#delete_fps) | **DELETE** /employers/{employerId}/rti/fps/{taxYear}/{id} | Delete FPS
[**get_fps**](FpsApi.md#get_fps) | **GET** /employers/{employerId}/rti/fps/{taxYear}/{id} | Get FPS
[**list_fps**](FpsApi.md#list_fps) | **GET** /employers/{employerId}/rti/fps/{taxYear} | List FPS
[**mark_as_accepted_fps**](FpsApi.md#mark_as_accepted_fps) | **POST** /employers/{employerId}/rti/fps/{taxYear}/{id}/markasaccepted | Mark as Sent
[**most_recent_for_employee_fps**](FpsApi.md#most_recent_for_employee_fps) | **GET** /employers/{employerId}/rti/fps/{taxYear}/mostrecentforemployee/{employeeId} | Get most recent FPS for Employee
[**requiring_attention_fps**](FpsApi.md#requiring_attention_fps) | **GET** /employers/{employerId}/rti/fps/requiringattention | FPS Requiring Attention
[**submit_fps**](FpsApi.md#submit_fps) | **POST** /employers/{employerId}/rti/fps/{taxYear}/{id}/submit | Submit FPS
[**update_fps**](FpsApi.md#update_fps) | **PUT** /employers/{employerId}/rti/fps/{taxYear}/{id} | Update FPS

# **create_fps**
> Fps create_fps(employer_idtax_year, opts)

Create FPS

Creates a new Full Payment Submission.  This is limited to corrections, to a previous year, for a single employee.

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

api_instance = SwaggerClient::FpsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  body: SwaggerClient::Fps.new # Fps | 
}

begin
  #Create FPS
  result = api_instance.create_fps(employer_idtax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FpsApi->create_fps: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **body** | [**Fps**](Fps.md)|  | [optional] 

### Return type

[**Fps**](Fps.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **delete_fps**
> delete_fps(employer_id, tax_year, id)

Delete FPS

Not implemented, FPSes cannot be deleted

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

api_instance = SwaggerClient::FpsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Delete FPS
  api_instance.delete_fps(employer_id, tax_year, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FpsApi->delete_fps: #{e}"
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



# **get_fps**
> Fps get_fps(employer_id, tax_year, id)

Get FPS

Retrieves the Full Payment Submission specified

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

api_instance = SwaggerClient::FpsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Get FPS
  result = api_instance.get_fps(employer_id, tax_year, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FpsApi->get_fps: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **id** | [**String**](.md)|  | 

### Return type

[**Fps**](Fps.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_fps**
> Array&lt;Item&gt; list_fps(employer_id, tax_year)

List FPS

Returns all Full Payment Submissions for the given tax year.

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

api_instance = SwaggerClient::FpsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 


begin
  #List FPS
  result = api_instance.list_fps(employer_id, tax_year)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FpsApi->list_fps: #{e}"
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



# **mark_as_accepted_fps**
> Fps mark_as_accepted_fps(employer_id, tax_year, id)

Mark as Sent

Marks an Full Payment Submission as having been sent to HMRC and accepted by them\\nYou only use this method if the FPS has been submitted via an external system.\\nIt will automatically be updated as Sent and/or Accepted if it's submitted via this API.

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

api_instance = SwaggerClient::FpsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Mark as Sent
  result = api_instance.mark_as_accepted_fps(employer_id, tax_year, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FpsApi->mark_as_accepted_fps: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **id** | [**String**](.md)|  | 

### Return type

[**Fps**](Fps.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **most_recent_for_employee_fps**
> Item most_recent_for_employee_fps(employer_id, tax_year, employee_id, opts)

Get most recent FPS for Employee

Returns the most recent Full Payment Submission that includes the specified employee

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

api_instance = SwaggerClient::FpsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  correction: false # BOOLEAN | Only search for FPS's submitted as a correction to a previous year
}

begin
  #Get most recent FPS for Employee
  result = api_instance.most_recent_for_employee_fps(employer_id, tax_year, employee_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FpsApi->most_recent_for_employee_fps: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **employee_id** | [**String**](.md)|  | 
 **correction** | **BOOLEAN**| Only search for FPS&#x27;s submitted as a correction to a previous year | [optional] [default to false]

### Return type

[**Item**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **requiring_attention_fps**
> Array&lt;Item&gt; requiring_attention_fps(employer_id)

FPS Requiring Attention

Returns all Full Payment Submissions that have a Submission Status of NotSubmitted or ErrorResponse

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

api_instance = SwaggerClient::FpsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #FPS Requiring Attention
  result = api_instance.requiring_attention_fps(employer_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FpsApi->requiring_attention_fps: #{e}"
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



# **submit_fps**
> Fps submit_fps(employer_id, tax_year, id)

Submit FPS

Submits an existing Full Payment Submission to HMRC.

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

api_instance = SwaggerClient::FpsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Submit FPS
  result = api_instance.submit_fps(employer_id, tax_year, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FpsApi->submit_fps: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **id** | [**String**](.md)|  | 

### Return type

[**Fps**](Fps.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_fps**
> Fps update_fps(employer_idtax_yearid, opts)

Update FPS

Updates an existing Full Payment Submission.

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

api_instance = SwaggerClient::FpsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  body: SwaggerClient::Fps.new # Fps | 
}

begin
  #Update FPS
  result = api_instance.update_fps(employer_idtax_yearid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FpsApi->update_fps: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **id** | [**String**](.md)|  | 
 **body** | [**Fps**](Fps.md)|  | [optional] 

### Return type

[**Fps**](Fps.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



