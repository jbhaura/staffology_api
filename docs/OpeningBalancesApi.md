# SwaggerClient::OpeningBalancesApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_nic_summaries_opening_balances**](OpeningBalancesApi.md#get_nic_summaries_opening_balances) | **GET** /employers/{employerId}/employees/{employeeId}/openingBalances/nic/{taxYear} | Get NicSummaries
[**get_opening_balances**](OpeningBalancesApi.md#get_opening_balances) | **GET** /employers/{employerId}/employees/{employeeId}/openingBalances | Get Opening Balances
[**update_nic_summaries_opening_balances**](OpeningBalancesApi.md#update_nic_summaries_opening_balances) | **PUT** /employers/{employerId}/employees/{employeeId}/openingBalances/nic/{taxYear} | Update NicSummaries
[**update_opening_balances**](OpeningBalancesApi.md#update_opening_balances) | **PUT** /employers/{employerId}/employees/{employeeId}/openingBalances | Update Opening Balances
[**update_p45_opening_balances**](OpeningBalancesApi.md#update_p45_opening_balances) | **PUT** /employers/{employerId}/employees/{employeeId}/openingBalances/p45 | Update P45 Value
[**update_termination_payments_opening_balances**](OpeningBalancesApi.md#update_termination_payments_opening_balances) | **PUT** /employers/{employerId}/employees/{employeeId}/openingBalances/terminationpayments | Update Termination Pay

# **get_nic_summaries_opening_balances**
> Array&lt;NicSummary&gt; get_nic_summaries_opening_balances(employer_id, employee_id, tax_year)

Get NicSummaries

Returns the NicSummaries for an Employee for a given TaxYear.\\n  If the TaxYear is the same as on their OpeningBalances then the NicSummaries will be the same as shown there.

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

api_instance = SwaggerClient::OpeningBalancesApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the Employee belongs
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employee for which you want to retrieve Opening Balances
tax_year = SwaggerClient::TaxYear.new # TaxYear | The TaxYear the NicSummaries apply to


begin
  #Get NicSummaries
  result = api_instance.get_nic_summaries_opening_balances(employer_id, employee_id, tax_year)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OpeningBalancesApi->get_nic_summaries_opening_balances: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the Employee belongs | 
 **employee_id** | [**String**](.md)| The Id of the Employee for which you want to retrieve Opening Balances | 
 **tax_year** | [**TaxYear**](.md)| The TaxYear the NicSummaries apply to | 

### Return type

[**Array&lt;NicSummary&gt;**](NicSummary.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_opening_balances**
> OpeningBalances get_opening_balances(employer_id, employee_id)

Get Opening Balances

Returns the Opening Balances for an Employee

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

api_instance = SwaggerClient::OpeningBalancesApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the Employee belongs
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employee for which you want to retrieve Opening Balances


begin
  #Get Opening Balances
  result = api_instance.get_opening_balances(employer_id, employee_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OpeningBalancesApi->get_opening_balances: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the Employee belongs | 
 **employee_id** | [**String**](.md)| The Id of the Employee for which you want to retrieve Opening Balances | 

### Return type

[**OpeningBalances**](OpeningBalances.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **update_nic_summaries_opening_balances**
> Array&lt;NicSummary&gt; update_nic_summaries_opening_balances(employer_idemployee_idtax_year, opts)

Update NicSummaries

Updates the NicSummaries for an Employee for a given TaxYear.\\n  If the TaxYear is the same as on their OpeningBalances then the NicSummaries there will also be updated.

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

api_instance = SwaggerClient::OpeningBalancesApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the Employee belongs
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employee for which you want to retrieve Opening Balances
tax_year = SwaggerClient::TaxYear.new # TaxYear | The TaxYear the NicSummaries apply to
opts = { 
  body: [SwaggerClient::NicSummary.new] # Array<NicSummary> | 
}

begin
  #Update NicSummaries
  result = api_instance.update_nic_summaries_opening_balances(employer_idemployee_idtax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OpeningBalancesApi->update_nic_summaries_opening_balances: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the Employee belongs | 
 **employee_id** | [**String**](.md)| The Id of the Employee for which you want to retrieve Opening Balances | 
 **tax_year** | [**TaxYear**](.md)| The TaxYear the NicSummaries apply to | 
 **body** | [**Array&lt;NicSummary&gt;**](NicSummary.md)|  | [optional] 

### Return type

[**Array&lt;NicSummary&gt;**](NicSummary.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json



# **update_opening_balances**
> OpeningBalances update_opening_balances(employer_idemployee_id, opts)

Update Opening Balances

Updates the Opening Balances for an Employee.

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

api_instance = SwaggerClient::OpeningBalancesApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the Employee belongs
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employee for which you want to update Opening Balances
opts = { 
  body: SwaggerClient::OpeningBalances.new # OpeningBalances | 
}

begin
  #Update Opening Balances
  result = api_instance.update_opening_balances(employer_idemployee_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OpeningBalancesApi->update_opening_balances: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the Employee belongs | 
 **employee_id** | [**String**](.md)| The Id of the Employee for which you want to update Opening Balances | 
 **body** | [**OpeningBalances**](OpeningBalances.md)|  | [optional] 

### Return type

[**OpeningBalances**](OpeningBalances.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json



# **update_p45_opening_balances**
> OpeningBalances update_p45_opening_balances(employer_idemployee_id, opts)

Update P45 Value

Updates the P45 Values on the Opening Balances for an Employee.\\n  This would ideally be done when the Opening Balances are updated but if payruns have already been started for the employee then Opening Balances can't be updated - hence this API call just to update the P45 values.\\n  There must be a currently open PayRun for the employee.\\n  Only the PreviousEmployerGross and PreviousEmployerTax properties of the submitted OpeningBalances model are updated.

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

api_instance = SwaggerClient::OpeningBalancesApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the Employee belongs
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employee for which you want to update P45 figures
opts = { 
  body: SwaggerClient::OpeningBalances.new # OpeningBalances | 
}

begin
  #Update P45 Value
  result = api_instance.update_p45_opening_balances(employer_idemployee_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OpeningBalancesApi->update_p45_opening_balances: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the Employee belongs | 
 **employee_id** | [**String**](.md)| The Id of the Employee for which you want to update P45 figures | 
 **body** | [**OpeningBalances**](OpeningBalances.md)|  | [optional] 

### Return type

[**OpeningBalances**](OpeningBalances.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json



# **update_termination_payments_opening_balances**
> OpeningBalances update_termination_payments_opening_balances(employer_idemployee_id, opts)

Update Termination Pay

Updates the Termination Pay value on the Opening Balances for an Employee.\\n  This would ideally be done when the Opening Balances are updated but if payruns have already been started for the employee then Opening Balances can't be updated - hence this API call just to update the Termination Pay value.\\n  Only the TerminationPayments property of the submitted OpeningBalances model is updated.

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

api_instance = SwaggerClient::OpeningBalancesApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the Employee belongs
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employee for which you want to update Termination Payments
opts = { 
  body: SwaggerClient::OpeningBalances.new # OpeningBalances | 
}

begin
  #Update Termination Pay
  result = api_instance.update_termination_payments_opening_balances(employer_idemployee_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OpeningBalancesApi->update_termination_payments_opening_balances: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the Employee belongs | 
 **employee_id** | [**String**](.md)| The Id of the Employee for which you want to update Termination Payments | 
 **body** | [**OpeningBalances**](OpeningBalances.md)|  | [optional] 

### Return type

[**OpeningBalances**](OpeningBalances.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json



