# SwaggerClient::PensionSchemeApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**contributions_for_payrun_pension_scheme**](PensionSchemeApi.md#contributions_for_payrun_pension_scheme) | **GET** /employers/{employerId}/pensionschemes/{id}/contributions/{taxYear}/{payPeriod}/{periodNumber} | Contributions for Payrun
[**contributions_pension_scheme**](PensionSchemeApi.md#contributions_pension_scheme) | **GET** /employers/{employerId}/pensionschemes/{id}/contributions/{taxYear}/{submissionId} | Contributions Data
[**create_pension_scheme**](PensionSchemeApi.md#create_pension_scheme) | **POST** /employers/{employerId}/pensionschemes | Create a PensionScheme
[**delete_pension_scheme**](PensionSchemeApi.md#delete_pension_scheme) | **DELETE** /employers/{employerId}/pensionschemes/{id} | Delete a PensionScheme
[**employees_pension_scheme**](PensionSchemeApi.md#employees_pension_scheme) | **GET** /employers/{employerId}/pensionschemes/{id}/employees | Get Employees
[**get_pension_scheme**](PensionSchemeApi.md#get_pension_scheme) | **GET** /employers/{employerId}/pensionschemes/{id} | Get a PensionScheme
[**index_pension_scheme**](PensionSchemeApi.md#index_pension_scheme) | **GET** /employers/{employerId}/pensionschemes | List PensionSchemes
[**list_contributions_pension_scheme**](PensionSchemeApi.md#list_contributions_pension_scheme) | **GET** /employers/{employerId}/pensionschemes/{id}/contributions/{taxYear} | List Contributions
[**mark_as_sent_pension_scheme**](PensionSchemeApi.md#mark_as_sent_pension_scheme) | **POST** /employers/{employerId}/pensionschemes/{id}/contributions/{taxYear}/{submissionId}/markassent | Mark as Sent
[**resubmit_contributions_pension_scheme**](PensionSchemeApi.md#resubmit_contributions_pension_scheme) | **POST** /employers/{employerId}/pensionschemes/{id}/contributions/{taxYear}/{submissionId} | Re-submit Contributions
[**update_pension_scheme**](PensionSchemeApi.md#update_pension_scheme) | **PUT** /employers/{employerId}/pensionschemes/{id} | Update a PensionScheme

# **contributions_for_payrun_pension_scheme**
> PensionContributionsSubmission contributions_for_payrun_pension_scheme(employer_id, id, tax_year, pay_period, period_number, opts)

Contributions for Payrun

Returns contributions for a specific scheme and payrun

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

api_instance = SwaggerClient::PensionSchemeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the PensionScheme belongs.
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the PensionScheme.
tax_year = SwaggerClient::TaxYear.new # TaxYear | The TaxYear to query
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
period_number = 56 # Integer | 
opts = { 
  ordinal: 1 # Integer | 
}

begin
  #Contributions for Payrun
  result = api_instance.contributions_for_payrun_pension_scheme(employer_id, id, tax_year, pay_period, period_number, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PensionSchemeApi->contributions_for_payrun_pension_scheme: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the PensionScheme belongs. | 
 **id** | [**String**](.md)| The Id of the PensionScheme. | 
 **tax_year** | [**TaxYear**](.md)| The TaxYear to query | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **period_number** | **Integer**|  | 
 **ordinal** | **Integer**|  | [optional] [default to 1]

### Return type

[**PensionContributionsSubmission**](PensionContributionsSubmission.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **contributions_pension_scheme**
> ExternalProviderConversation contributions_pension_scheme(employer_id, id, tax_year, submission_id)

Contributions Data

Returns an ExternalProviderConversation showing data sent to and received from the ExternalDataProvider for the pension contribution submission.

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

api_instance = SwaggerClient::PensionSchemeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the PensionScheme belongs.
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the PensionScheme.
tax_year = SwaggerClient::TaxYear.new # TaxYear | The TaxYear of the submission
submission_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Submission.


begin
  #Contributions Data
  result = api_instance.contributions_pension_scheme(employer_id, id, tax_year, submission_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PensionSchemeApi->contributions_pension_scheme: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the PensionScheme belongs. | 
 **id** | [**String**](.md)| The Id of the PensionScheme. | 
 **tax_year** | [**TaxYear**](.md)| The TaxYear of the submission | 
 **submission_id** | [**String**](.md)| The Id of the Submission. | 

### Return type

[**ExternalProviderConversation**](ExternalProviderConversation.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_pension_scheme**
> PensionScheme create_pension_scheme(employer_id, opts)

Create a PensionScheme

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

api_instance = SwaggerClient::PensionSchemeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  body: SwaggerClient::PensionScheme.new # PensionScheme | 
}

begin
  #Create a PensionScheme
  result = api_instance.create_pension_scheme(employer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PensionSchemeApi->create_pension_scheme: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **body** | [**PensionScheme**](PensionScheme.md)|  | [optional] 

### Return type

[**PensionScheme**](PensionScheme.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **delete_pension_scheme**
> delete_pension_scheme(employer_id, id)

Delete a PensionScheme

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

api_instance = SwaggerClient::PensionSchemeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Delete a PensionScheme
  api_instance.delete_pension_scheme(employer_id, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PensionSchemeApi->delete_pension_scheme: #{e}"
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



# **employees_pension_scheme**
> Array&lt;Item&gt; employees_pension_scheme(employer_id, id)

Get Employees

Returns the employees that are enrolled in the specified scheme

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

api_instance = SwaggerClient::PensionSchemeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the PensionScheme belongs.
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the PensionScheme you want to retrieve Employees for.


begin
  #Get Employees
  result = api_instance.employees_pension_scheme(employer_id, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PensionSchemeApi->employees_pension_scheme: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the PensionScheme belongs. | 
 **id** | [**String**](.md)| The Id of the PensionScheme you want to retrieve Employees for. | 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pension_scheme**
> PensionScheme get_pension_scheme(employer_id, id)

Get a PensionScheme

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

api_instance = SwaggerClient::PensionSchemeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the PensionScheme belongs.
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the PensionScheme you want to retrieve.


begin
  #Get a PensionScheme
  result = api_instance.get_pension_scheme(employer_id, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PensionSchemeApi->get_pension_scheme: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the PensionScheme belongs. | 
 **id** | [**String**](.md)| The Id of the PensionScheme you want to retrieve. | 

### Return type

[**PensionScheme**](PensionScheme.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **index_pension_scheme**
> Array&lt;Item&gt; index_pension_scheme(employer_id)

List PensionSchemes

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

api_instance = SwaggerClient::PensionSchemeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer for which you want to list PensionSchemes


begin
  #List PensionSchemes
  result = api_instance.index_pension_scheme(employer_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PensionSchemeApi->index_pension_scheme: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer for which you want to list PensionSchemes | 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_contributions_pension_scheme**
> Array&lt;Item&gt; list_contributions_pension_scheme(employer_id, id, tax_year)

List Contributions

Returns a list of Items that tell you which PayRuns contain contributions to this scheme and the Url to the relevant report.\\n  IF the scheme is connected to an ExternalDataProvider then the status of the submission will also be included.

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

api_instance = SwaggerClient::PensionSchemeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the PensionScheme belongs.
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the PensionScheme.
tax_year = SwaggerClient::TaxYear.new # TaxYear | The TaxYear to query


begin
  #List Contributions
  result = api_instance.list_contributions_pension_scheme(employer_id, id, tax_year)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PensionSchemeApi->list_contributions_pension_scheme: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the PensionScheme belongs. | 
 **id** | [**String**](.md)| The Id of the PensionScheme. | 
 **tax_year** | [**TaxYear**](.md)| The TaxYear to query | 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **mark_as_sent_pension_scheme**
> ExternalProviderConversation mark_as_sent_pension_scheme(employer_id, id, tax_year, submission_id)

Mark as Sent

Marks the Pension Contributions as sent

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

api_instance = SwaggerClient::PensionSchemeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the PensionScheme belongs.
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the PensionScheme.
tax_year = SwaggerClient::TaxYear.new # TaxYear | The TaxYear of the submission
submission_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Submission.


begin
  #Mark as Sent
  result = api_instance.mark_as_sent_pension_scheme(employer_id, id, tax_year, submission_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PensionSchemeApi->mark_as_sent_pension_scheme: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the PensionScheme belongs. | 
 **id** | [**String**](.md)| The Id of the PensionScheme. | 
 **tax_year** | [**TaxYear**](.md)| The TaxYear of the submission | 
 **submission_id** | [**String**](.md)| The Id of the Submission. | 

### Return type

[**ExternalProviderConversation**](ExternalProviderConversation.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **resubmit_contributions_pension_scheme**
> resubmit_contributions_pension_scheme(employer_id, id, tax_year, submission_id)

Re-submit Contributions

Re-submits previously failed Contributions to a Pension Scheme.

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

api_instance = SwaggerClient::PensionSchemeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the PensionScheme belongs.
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the PensionScheme.
tax_year = SwaggerClient::TaxYear.new # TaxYear | The TaxYear of the submission
submission_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Submission to re-submit.


begin
  #Re-submit Contributions
  api_instance.resubmit_contributions_pension_scheme(employer_id, id, tax_year, submission_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PensionSchemeApi->resubmit_contributions_pension_scheme: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the PensionScheme belongs. | 
 **id** | [**String**](.md)| The Id of the PensionScheme. | 
 **tax_year** | [**TaxYear**](.md)| The TaxYear of the submission | 
 **submission_id** | [**String**](.md)| The Id of the Submission to re-submit. | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **update_pension_scheme**
> PensionScheme update_pension_scheme(employer_idid, opts)

Update a PensionScheme

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

api_instance = SwaggerClient::PensionSchemeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  body: SwaggerClient::PensionScheme.new # PensionScheme | 
}

begin
  #Update a PensionScheme
  result = api_instance.update_pension_scheme(employer_idid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PensionSchemeApi->update_pension_scheme: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)|  | 
 **body** | [**PensionScheme**](PensionScheme.md)|  | [optional] 

### Return type

[**PensionScheme**](PensionScheme.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



