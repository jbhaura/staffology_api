# SwaggerClient::ExternalDataApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authorize_external_data**](ExternalDataApi.md#authorize_external_data) | **GET** /employers/{employerId}/external-data/{id}/authorize | Get Authorization Url
[**companies_external_data**](ExternalDataApi.md#companies_external_data) | **GET** /employers/{employerId}/external-data/{id}/companies | List Companies
[**disconnect_external_data**](ExternalDataApi.md#disconnect_external_data) | **GET** /employers/{employerId}/external-data/{id}/disconnect | Disconnect
[**employee_external_data**](ExternalDataApi.md#employee_external_data) | **GET** /employers/{employerId}/external-data/{id}/employees/{employeeId} | Get Employee
[**employee_logs_external_data**](ExternalDataApi.md#employee_logs_external_data) | **GET** /employers/{employerId}/external-data/{id}/employees/{employeeId}/logs | Get Employee Logs
[**employees_external_data**](ExternalDataApi.md#employees_external_data) | **GET** /employers/{employerId}/external-data/{id}/employees | List Employees
[**get_config_data_external_data**](ExternalDataApi.md#get_config_data_external_data) | **GET** /employers/{employerId}/external-data/{id}/config | Get Config Data
[**get_request_external_data**](ExternalDataApi.md#get_request_external_data) | **GET** /employers/{employerId}/external-data/{id}/http-get | Http Get
[**import_employees_external_data**](ExternalDataApi.md#import_employees_external_data) | **POST** /employers/{employerId}/external-data/{id}/employees | Import Employees
[**list_external_data**](ExternalDataApi.md#list_external_data) | **GET** /employers/{employerId}/external-data | List Providers
[**nominal_codes_external_data**](ExternalDataApi.md#nominal_codes_external_data) | **GET** /employers/{employerId}/external-data/{id}/nominals | List Nominal Codes
[**pension_contributions_csv_external_data**](ExternalDataApi.md#pension_contributions_csv_external_data) | **GET** /employers/{employerId}/external-data/{id}/contributions/{taxYear}/{payPeriod}/{periodNumber} | Contributions CSV File
[**post_journal_external_data**](ExternalDataApi.md#post_journal_external_data) | **POST** /employers/{employerId}/external-data/{id}/{taxYear}/{payPeriod}/{periodNumber}/journal | Post Journal
[**post_payments_external_data**](ExternalDataApi.md#post_payments_external_data) | **POST** /employers/{employerId}/external-data/{id}/{taxYear}/{payPeriod}/{periodNumber}/payments | Post Payments
[**post_request_external_data**](ExternalDataApi.md#post_request_external_data) | **POST** /employers/{employerId}/external-data/{id}/http-post | Http Post
[**push_employees_external_data**](ExternalDataApi.md#push_employees_external_data) | **PUT** /employers/{employerId}/external-data/{id}/employees/push | Push Employees
[**push_p11_d_external_data**](ExternalDataApi.md#push_p11_d_external_data) | **POST** /employers/{employerId}/external-data/{id}/p11d | Push P11D
[**push_p11_ds_external_data**](ExternalDataApi.md#push_p11_ds_external_data) | **POST** /employers/{employerId}/external-data/{id}/p11ds | Push P11Ds
[**push_p45_external_data**](ExternalDataApi.md#push_p45_external_data) | **POST** /employers/{employerId}/external-data/{id}/p45 | Push P45
[**push_p60_external_data**](ExternalDataApi.md#push_p60_external_data) | **POST** /employers/{employerId}/external-data/{id}/p60 | Push P60
[**push_payslips_external_data**](ExternalDataApi.md#push_payslips_external_data) | **POST** /employers/{employerId}/external-data/{id}/payslips | Push Payslips
[**push_pension_letter_external_data**](ExternalDataApi.md#push_pension_letter_external_data) | **POST** /employers/{employerId}/external-data/{id}/pension-letter | Push Pension Letter
[**respond_external_data**](ExternalDataApi.md#respond_external_data) | **GET** /external-data/{id}/respond | 3rd Party Response
[**set_config_data_external_data**](ExternalDataApi.md#set_config_data_external_data) | **PUT** /employers/{employerId}/external-data/{id}/config | Set Config Data
[**set_credentials_external_data**](ExternalDataApi.md#set_credentials_external_data) | **PUT** /employers/{employerId}/external-data/{id}/authorize | Set Credentials
[**sync_all_employees_external_data**](ExternalDataApi.md#sync_all_employees_external_data) | **GET** /employers/{employerId}/external-data/{id}/employees/i/sync-all | Sync Employees
[**sync_employee_external_data**](ExternalDataApi.md#sync_employee_external_data) | **GET** /employers/{employerId}/external-data/{id}/employees/{employeeId}/sync | Sync Employee
[**sync_leave_external_data**](ExternalDataApi.md#sync_leave_external_data) | **POST** /employers/{employerId}/external-data/{id}/{taxYear}/{payPeriod}/{periodNumber}/leave | Sync Leave
[**time_and_attendance_external_data**](ExternalDataApi.md#time_and_attendance_external_data) | **GET** /employers/{employerId}/external-data/{id}/time-and-attendance | Get Time And Attendance Data
[**update_employee_external_data**](ExternalDataApi.md#update_employee_external_data) | **PUT** /employers/{employerId}/external-data/{id}/employees/{employeeId} | Update Employee

# **authorize_external_data**
> String authorize_external_data(employer_id, id, opts)

Get Authorization Url

For ExternalDataProviders with an AuthScheme of OAuth1 or OAuth2.\\n  Returns a Url to redirect a user to in order to start the authorization process with the given ExternalDataProvider.\\n  Our API handles the response from the OAuth provider and processes it to obtain a token.\\n  The user is then sent to the URL specified.

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

api_instance = SwaggerClient::ExternalDataApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer.
id = SwaggerClient::ExternalDataProviderId.new # ExternalDataProviderId | The Id of the ExternalDataProvider you want to authorize with.
opts = { 
  return_url: 'return_url_example' # String | The URL to send the user to once the process is complete.
}

begin
  #Get Authorization Url
  result = api_instance.authorize_external_data(employer_id, id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExternalDataApi->authorize_external_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer. | 
 **id** | [**ExternalDataProviderId**](.md)| The Id of the ExternalDataProvider you want to authorize with. | 
 **return_url** | **String**| The URL to send the user to once the process is complete. | [optional] 

### Return type

**String**

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **companies_external_data**
> Array&lt;ExternalDataCompany&gt; companies_external_data(id, employer_id)

List Companies

Return a list of companies from the external data provider

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

api_instance = SwaggerClient::ExternalDataApi.new
id = SwaggerClient::ExternalDataProviderId.new # ExternalDataProviderId | 
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #List Companies
  result = api_instance.companies_external_data(id, employer_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExternalDataApi->companies_external_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**ExternalDataProviderId**](.md)|  | 
 **employer_id** | [**String**](.md)|  | 

### Return type

[**Array&lt;ExternalDataCompany&gt;**](ExternalDataCompany.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **disconnect_external_data**
> disconnect_external_data(employer_id, id)

Disconnect

Disconnect from the external provider and revoke any OAuth token that has been received.

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

api_instance = SwaggerClient::ExternalDataApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer.
id = SwaggerClient::ExternalDataProviderId.new # ExternalDataProviderId | The Id of the ExternalDataProvider you want to disconnect from.


begin
  #Disconnect
  api_instance.disconnect_external_data(employer_id, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExternalDataApi->disconnect_external_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer. | 
 **id** | [**ExternalDataProviderId**](.md)| The Id of the ExternalDataProvider you want to disconnect from. | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **employee_external_data**
> ExternalEmployeeMapping employee_external_data(id, employer_id, employee_id)

Get Employee

Return an ExternalEmployeeMapping for the specified Employee from the external data provider

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

api_instance = SwaggerClient::ExternalDataApi.new
id = SwaggerClient::ExternalDataProviderId.new # ExternalDataProviderId | 
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = 'employee_id_example' # String | The Id of the employee in the external data provider


begin
  #Get Employee
  result = api_instance.employee_external_data(id, employer_id, employee_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExternalDataApi->employee_external_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**ExternalDataProviderId**](.md)|  | 
 **employer_id** | [**String**](.md)|  | 
 **employee_id** | **String**| The Id of the employee in the external data provider | 

### Return type

[**ExternalEmployeeMapping**](ExternalEmployeeMapping.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **employee_logs_external_data**
> Array&lt;LogEntry&gt; employee_logs_external_data(id, employer_id, employee_id)

Get Employee Logs

Return a list of changes made locally to this employee based on changes in the external data provider

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

api_instance = SwaggerClient::ExternalDataApi.new
id = SwaggerClient::ExternalDataProviderId.new # ExternalDataProviderId | 
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = 'employee_id_example' # String | The Id of the employee in the external data provider


begin
  #Get Employee Logs
  result = api_instance.employee_logs_external_data(id, employer_id, employee_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExternalDataApi->employee_logs_external_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**ExternalDataProviderId**](.md)|  | 
 **employer_id** | [**String**](.md)|  | 
 **employee_id** | **String**| The Id of the employee in the external data provider | 

### Return type

[**Array&lt;LogEntry&gt;**](LogEntry.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **employees_external_data**
> Array&lt;Item&gt; employees_external_data(id, employer_id)

List Employees

Return a list of ExternalEmployeeMapping for Employees in the external data provider.\\n  The metadata of the Item contains a field called externalId. This can be used to retrieve the full employee record.

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

api_instance = SwaggerClient::ExternalDataApi.new
id = SwaggerClient::ExternalDataProviderId.new # ExternalDataProviderId | 
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #List Employees
  result = api_instance.employees_external_data(id, employer_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExternalDataApi->employees_external_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**ExternalDataProviderId**](.md)|  | 
 **employer_id** | [**String**](.md)|  | 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_config_data_external_data**
> get_config_data_external_data(employer_id, id)

Get Config Data

Returns any additional configuration data for the connection to the ExternalDataProvider.

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

api_instance = SwaggerClient::ExternalDataApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer.
id = SwaggerClient::ExternalDataProviderId.new # ExternalDataProviderId | The Id of the ExternalDataProvider you want configuration data for.


begin
  #Get Config Data
  api_instance.get_config_data_external_data(employer_id, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExternalDataApi->get_config_data_external_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer. | 
 **id** | [**ExternalDataProviderId**](.md)| The Id of the ExternalDataProvider you want configuration data for. | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_request_external_data**
> get_request_external_data(id, employer_id, opts)

Http Get

Perform a GET to given URL of the specified ExtenalDataProvider API

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

api_instance = SwaggerClient::ExternalDataApi.new
id = SwaggerClient::ExternalDataProviderId.new # ExternalDataProviderId | 
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  url: 'url_example' # String | 
}

begin
  #Http Get
  api_instance.get_request_external_data(id, employer_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExternalDataApi->get_request_external_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**ExternalDataProviderId**](.md)|  | 
 **employer_id** | [**String**](.md)|  | 
 **url** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **import_employees_external_data**
> Array&lt;Item&gt; import_employees_external_data(idemployer_id, opts)

Import Employees

Import Employees from the external data provider.

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

api_instance = SwaggerClient::ExternalDataApi.new
id = SwaggerClient::ExternalDataProviderId.new # ExternalDataProviderId | 
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  body: ['body_example'] # Array<String> | The externalIds to import
}

begin
  #Import Employees
  result = api_instance.import_employees_external_data(idemployer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExternalDataApi->import_employees_external_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**ExternalDataProviderId**](.md)|  | 
 **employer_id** | [**String**](.md)|  | 
 **body** | [**Array&lt;String&gt;**](String.md)| The externalIds to import | [optional] 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **list_external_data**
> Array&lt;ExternalDataProvider&gt; list_external_data(employer_id)

List Providers

Returns a list of External Data Providers and indicates which the Employer has successfully authenticated with.

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

api_instance = SwaggerClient::ExternalDataApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer.


begin
  #List Providers
  result = api_instance.list_external_data(employer_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExternalDataApi->list_external_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer. | 

### Return type

[**Array&lt;ExternalDataProvider&gt;**](ExternalDataProvider.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **nominal_codes_external_data**
> Array&lt;Item&gt; nominal_codes_external_data(id, employer_id)

List Nominal Codes

Return a list of Nominal Codes from the external data provider

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

api_instance = SwaggerClient::ExternalDataApi.new
id = SwaggerClient::ExternalDataProviderId.new # ExternalDataProviderId | 
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #List Nominal Codes
  result = api_instance.nominal_codes_external_data(id, employer_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExternalDataApi->nominal_codes_external_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**ExternalDataProviderId**](.md)|  | 
 **employer_id** | [**String**](.md)|  | 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **pension_contributions_csv_external_data**
> String pension_contributions_csv_external_data(id, employer_id, pay_period, period_number, tax_year, opts)

Contributions CSV File

Returns a CSV file containing contributions for the specified payrun in a format specific to the ExternalDataProvider

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

api_instance = SwaggerClient::ExternalDataApi.new
id = SwaggerClient::ExternalDataProviderId.new # ExternalDataProviderId | 
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
period_number = 56 # Integer | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  scheme_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | The Id of the Pension Scheme you want a file for.
  ordinal: 1 # Integer | 
}

begin
  #Contributions CSV File
  result = api_instance.pension_contributions_csv_external_data(id, employer_id, pay_period, period_number, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExternalDataApi->pension_contributions_csv_external_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**ExternalDataProviderId**](.md)|  | 
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **period_number** | **Integer**|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **scheme_id** | [**String**](.md)| The Id of the Pension Scheme you want a file for. | [optional] 
 **ordinal** | **Integer**|  | [optional] [default to 1]

### Return type

**String**

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_journal_external_data**
> PayRunJournal post_journal_external_data(id, employer_id, pay_period, period_number, tax_year, opts)

Post Journal

Post a Journal for a payrun to the ExternalDataProvider\\n  A 200 response does not mean the journal was necessarily successfully posted.\\n  The PayRunJournal is returned (without the Lines) so that you can inspect the status to determine success

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

api_instance = SwaggerClient::ExternalDataApi.new
id = SwaggerClient::ExternalDataProviderId.new # ExternalDataProviderId | 
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | To identify the PayRun
period_number = 56 # Integer | To identify the PayRun
tax_year = SwaggerClient::TaxYear.new # TaxYear | To identify the PayRun
opts = { 
  force: true, # BOOLEAN | Set to true if you want to force the journal to be posted even if it already has been
  ordinal: 1 # Integer | 
}

begin
  #Post Journal
  result = api_instance.post_journal_external_data(id, employer_id, pay_period, period_number, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExternalDataApi->post_journal_external_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**ExternalDataProviderId**](.md)|  | 
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)| To identify the PayRun | 
 **period_number** | **Integer**| To identify the PayRun | 
 **tax_year** | [**TaxYear**](.md)| To identify the PayRun | 
 **force** | **BOOLEAN**| Set to true if you want to force the journal to be posted even if it already has been | [optional] 
 **ordinal** | **Integer**|  | [optional] [default to 1]

### Return type

[**PayRunJournal**](PayRunJournal.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_payments_external_data**
> BankPaymentInstruction post_payments_external_data(id, employer_id, pay_period, period_number, tax_year, opts)

Post Payments

Post Payments for a payrun to the ExternalDataProvider\\n  A 200 response does not mean the payments were necessarily successfully posted.\\n  The BankPaymentInstruction is returned (without the payments) so that you can inspect the status to determine success

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

api_instance = SwaggerClient::ExternalDataApi.new
id = SwaggerClient::ExternalDataProviderId.new # ExternalDataProviderId | 
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | To identify the PayRun
period_number = 56 # Integer | To identify the PayRun
tax_year = SwaggerClient::TaxYear.new # TaxYear | To identify the PayRun
opts = { 
  inc_employees: true, # BOOLEAN | Include payments for employees
  inc_hmrc: true, # BOOLEAN | Include payments for HMRC (if any)
  inc_pensions: true, # BOOLEAN | Include payments for Pension Providers (if any)
  force: true, # BOOLEAN | Set to true if you want to force the payments to be posted even if it already has been
  ordinal: 1, # Integer | 
  payment_date: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Optional. If a value is provided then it'll be used in place of the payment date for the payment.
}

begin
  #Post Payments
  result = api_instance.post_payments_external_data(id, employer_id, pay_period, period_number, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExternalDataApi->post_payments_external_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**ExternalDataProviderId**](.md)|  | 
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)| To identify the PayRun | 
 **period_number** | **Integer**| To identify the PayRun | 
 **tax_year** | [**TaxYear**](.md)| To identify the PayRun | 
 **inc_employees** | **BOOLEAN**| Include payments for employees | [optional] 
 **inc_hmrc** | **BOOLEAN**| Include payments for HMRC (if any) | [optional] 
 **inc_pensions** | **BOOLEAN**| Include payments for Pension Providers (if any) | [optional] 
 **force** | **BOOLEAN**| Set to true if you want to force the payments to be posted even if it already has been | [optional] 
 **ordinal** | **Integer**|  | [optional] [default to 1]
 **payment_date** | **DateTime**| Optional. If a value is provided then it&#x27;ll be used in place of the payment date for the payment. | [optional] 

### Return type

[**BankPaymentInstruction**](BankPaymentInstruction.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_request_external_data**
> post_request_external_data(idemployer_id, opts)

Http Post

Perform a GET to given URL of the specified ExtenalDataProvider API

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

api_instance = SwaggerClient::ExternalDataApi.new
id = SwaggerClient::ExternalDataProviderId.new # ExternalDataProviderId | 
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  body: SwaggerClient::null.new #  | 
  url: 'url_example' # String | 
}

begin
  #Http Post
  api_instance.post_request_external_data(idemployer_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExternalDataApi->post_request_external_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**ExternalDataProviderId**](.md)|  | 
 **employer_id** | [**String**](.md)|  | 
 **body** | [****](.md)|  | [optional] 
 **url** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined



# **push_employees_external_data**
> Array&lt;Item&gt; push_employees_external_data(id, employer_id)

Push Employees

Push employees to the ExternalDataProvider.

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

api_instance = SwaggerClient::ExternalDataApi.new
id = SwaggerClient::ExternalDataProviderId.new # ExternalDataProviderId | 
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Push Employees
  result = api_instance.push_employees_external_data(id, employer_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExternalDataApi->push_employees_external_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**ExternalDataProviderId**](.md)|  | 
 **employer_id** | [**String**](.md)|  | 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **push_p11_d_external_data**
> push_p11_d_external_data(id, employer_id, opts)

Push P11D

Pushes a P11D for the given employee to the ExternalDataProvider.

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

api_instance = SwaggerClient::ExternalDataApi.new
id = SwaggerClient::ExternalDataProviderId.new # ExternalDataProviderId | 
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  employee_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | 
  tax_year: SwaggerClient::TaxYear.new # TaxYear | 
}

begin
  #Push P11D
  api_instance.push_p11_d_external_data(id, employer_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExternalDataApi->push_p11_d_external_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**ExternalDataProviderId**](.md)|  | 
 **employer_id** | [**String**](.md)|  | 
 **employee_id** | [**String**](.md)|  | [optional] 
 **tax_year** | [**TaxYear**](.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **push_p11_ds_external_data**
> push_p11_ds_external_data(id, employer_id, opts)

Push P11Ds

Pushes all P11Ds for the given TaxYear to the ExternalDataProvider.

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

api_instance = SwaggerClient::ExternalDataApi.new
id = SwaggerClient::ExternalDataProviderId.new # ExternalDataProviderId | 
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  tax_year: SwaggerClient::TaxYear.new # TaxYear | 
}

begin
  #Push P11Ds
  api_instance.push_p11_ds_external_data(id, employer_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExternalDataApi->push_p11_ds_external_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**ExternalDataProviderId**](.md)|  | 
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **push_p45_external_data**
> push_p45_external_data(id, employer_id, opts)

Push P45

Push a P45 to the ExternalDataProvider.

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

api_instance = SwaggerClient::ExternalDataApi.new
id = SwaggerClient::ExternalDataProviderId.new # ExternalDataProviderId | 
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  employee_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
}

begin
  #Push P45
  api_instance.push_p45_external_data(id, employer_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExternalDataApi->push_p45_external_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**ExternalDataProviderId**](.md)|  | 
 **employer_id** | [**String**](.md)|  | 
 **employee_id** | [**String**](.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **push_p60_external_data**
> push_p60_external_data(id, employer_id, opts)

Push P60

Pushes a P60 to the ExternalDataProvider.

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

api_instance = SwaggerClient::ExternalDataApi.new
id = SwaggerClient::ExternalDataProviderId.new # ExternalDataProviderId | 
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  employee_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | 
  tax_year: SwaggerClient::TaxYear.new # TaxYear | 
}

begin
  #Push P60
  api_instance.push_p60_external_data(id, employer_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExternalDataApi->push_p60_external_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**ExternalDataProviderId**](.md)|  | 
 **employer_id** | [**String**](.md)|  | 
 **employee_id** | [**String**](.md)|  | [optional] 
 **tax_year** | [**TaxYear**](.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **push_payslips_external_data**
> push_payslips_external_data(id, employer_id, opts)

Push Payslips

Push payslips to the ExternalDataProvider.

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

api_instance = SwaggerClient::ExternalDataApi.new
id = SwaggerClient::ExternalDataProviderId.new # ExternalDataProviderId | 
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  pay_period: SwaggerClient::PayPeriods.new, # PayPeriods | 
  period_number: 56, # Integer | 
  tax_year: SwaggerClient::TaxYear.new, # TaxYear | 
  force: true, # BOOLEAN | 
  ordinal: 1 # Integer | 
}

begin
  #Push Payslips
  api_instance.push_payslips_external_data(id, employer_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExternalDataApi->push_payslips_external_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**ExternalDataProviderId**](.md)|  | 
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | [optional] 
 **period_number** | **Integer**|  | [optional] 
 **tax_year** | [**TaxYear**](.md)|  | [optional] 
 **force** | **BOOLEAN**|  | [optional] 
 **ordinal** | **Integer**|  | [optional] [default to 1]

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **push_pension_letter_external_data**
> push_pension_letter_external_data(id, employer_id, opts)

Push Pension Letter

Pushes a Pension Letter for the given employee to the ExternalDataProvider.

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

api_instance = SwaggerClient::ExternalDataApi.new
id = SwaggerClient::ExternalDataProviderId.new # ExternalDataProviderId | 
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  employee_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | 
  assessment_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
}

begin
  #Push Pension Letter
  api_instance.push_pension_letter_external_data(id, employer_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExternalDataApi->push_pension_letter_external_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**ExternalDataProviderId**](.md)|  | 
 **employer_id** | [**String**](.md)|  | 
 **employee_id** | [**String**](.md)|  | [optional] 
 **assessment_id** | [**String**](.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **respond_external_data**
> respond_external_data(id, opts)

3rd Party Response

This endpoint is used by third parties to respond to an oAuth authorization request. You do not need to use this

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

api_instance = SwaggerClient::ExternalDataApi.new
id = SwaggerClient::ExternalDataProviderId.new # ExternalDataProviderId | 
opts = { 
  error: 'error_example' # String | 
}

begin
  #3rd Party Response
  api_instance.respond_external_data(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExternalDataApi->respond_external_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**ExternalDataProviderId**](.md)|  | 
 **error** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **set_config_data_external_data**
> set_config_data_external_data(employer_idid, opts)

Set Config Data

Sets the additional configuration data for the connection to the ExternalDataProvider.\\n  Only the value set in the userData field is updated

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

api_instance = SwaggerClient::ExternalDataApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer.
id = SwaggerClient::ExternalDataProviderId.new # ExternalDataProviderId | The Id of the ExternalDataProvider you want configuration data for.
opts = { 
  body: SwaggerClient::null.new #  | 
}

begin
  #Set Config Data
  api_instance.set_config_data_external_data(employer_idid, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExternalDataApi->set_config_data_external_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer. | 
 **id** | [**ExternalDataProviderId**](.md)| The Id of the ExternalDataProvider you want configuration data for. | 
 **body** | [****](.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined



# **set_credentials_external_data**
> set_credentials_external_data(employer_idid, opts)

Set Credentials

For ExternalDataProviders with an AuthScheme of Basic.\\n  Sets the username and password for the service.

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

api_instance = SwaggerClient::ExternalDataApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer.
id = SwaggerClient::ExternalDataProviderId.new # ExternalDataProviderId | The Id of the ExternalDataProvider you want to authorize with.
opts = { 
  body: [SwaggerClient::StringStringKeyValuePair.new] # Array<StringStringKeyValuePair> | Any additional data that is needed (optional)
  username: 'username_example' # String | The username for the ExternalDataProvider.
  password: 'password_example' # String | The password for the ExternalDataProvider.
}

begin
  #Set Credentials
  api_instance.set_credentials_external_data(employer_idid, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExternalDataApi->set_credentials_external_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer. | 
 **id** | [**ExternalDataProviderId**](.md)| The Id of the ExternalDataProvider you want to authorize with. | 
 **body** | [**Array&lt;StringStringKeyValuePair&gt;**](StringStringKeyValuePair.md)| Any additional data that is needed (optional) | [optional] 
 **username** | **String**| The username for the ExternalDataProvider. | [optional] 
 **password** | **String**| The password for the ExternalDataProvider. | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined



# **sync_all_employees_external_data**
> Array&lt;Item&gt; sync_all_employees_external_data(id, employer_id)

Sync Employees

Syncs data from the ExternalDataProvider to update all mapped employees

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

api_instance = SwaggerClient::ExternalDataApi.new
id = SwaggerClient::ExternalDataProviderId.new # ExternalDataProviderId | 
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Sync Employees
  result = api_instance.sync_all_employees_external_data(id, employer_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExternalDataApi->sync_all_employees_external_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**ExternalDataProviderId**](.md)|  | 
 **employer_id** | [**String**](.md)|  | 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sync_employee_external_data**
> Item sync_employee_external_data(id, employer_id, employee_id)

Sync Employee

Syncs data from the ExternalDataProvider to update the specified mapped employee.\\n  Any changes made as a result of the sync are show in the metadata.logs property.

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

api_instance = SwaggerClient::ExternalDataApi.new
id = SwaggerClient::ExternalDataProviderId.new # ExternalDataProviderId | 
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = 'employee_id_example' # String | The Id of the employee in the external data provider


begin
  #Sync Employee
  result = api_instance.sync_employee_external_data(id, employer_id, employee_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExternalDataApi->sync_employee_external_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**ExternalDataProviderId**](.md)|  | 
 **employer_id** | [**String**](.md)|  | 
 **employee_id** | **String**| The Id of the employee in the external data provider | 

### Return type

[**Item**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sync_leave_external_data**
> sync_leave_external_data(id, employer_id, pay_period, period_number, tax_year, opts)

Sync Leave

Sync Leave from the ExternalDataProvider for the specified PayRun.\\n  Returns a JSON object indicating how many Leaves have been created, updated or deleted, etc.

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

api_instance = SwaggerClient::ExternalDataApi.new
id = SwaggerClient::ExternalDataProviderId.new # ExternalDataProviderId | 
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
period_number = 56 # Integer | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  ordinal: 1 # Integer | 
}

begin
  #Sync Leave
  api_instance.sync_leave_external_data(id, employer_id, pay_period, period_number, tax_year, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExternalDataApi->sync_leave_external_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**ExternalDataProviderId**](.md)|  | 
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **period_number** | **Integer**|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **ordinal** | **Integer**|  | [optional] [default to 1]

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **time_and_attendance_external_data**
> Array&lt;PayOptionsImport&gt; time_and_attendance_external_data(id, employer_id, opts)

Get Time And Attendance Data

Return a list of PayOptionsImport representing Time and Attendance data from the specified ExternalDataProvider, for to specified date range

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

api_instance = SwaggerClient::ExternalDataApi.new
id = SwaggerClient::ExternalDataProviderId.new # ExternalDataProviderId | 
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  from: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 
  to: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | 
}

begin
  #Get Time And Attendance Data
  result = api_instance.time_and_attendance_external_data(id, employer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExternalDataApi->time_and_attendance_external_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**ExternalDataProviderId**](.md)|  | 
 **employer_id** | [**String**](.md)|  | 
 **from** | **DateTime**|  | [optional] 
 **to** | **DateTime**|  | [optional] 

### Return type

[**Array&lt;PayOptionsImport&gt;**](PayOptionsImport.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_employee_external_data**
> ExternalEmployeeMapping update_employee_external_data(idemployer_idemployee_id, opts)

Update Employee

Update an ExternalEmployeeMapping to map/unmap/import/ignore an employee from an external data provider

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

api_instance = SwaggerClient::ExternalDataApi.new
id = SwaggerClient::ExternalDataProviderId.new # ExternalDataProviderId | 
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = 'employee_id_example' # String | The Id of the employee in the external data provider
opts = { 
  body: SwaggerClient::ExternalEmployeeMapping.new # ExternalEmployeeMapping | 
}

begin
  #Update Employee
  result = api_instance.update_employee_external_data(idemployer_idemployee_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExternalDataApi->update_employee_external_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**ExternalDataProviderId**](.md)|  | 
 **employer_id** | [**String**](.md)|  | 
 **employee_id** | **String**| The Id of the employee in the external data provider | 
 **body** | [**ExternalEmployeeMapping**](ExternalEmployeeMapping.md)|  | [optional] 

### Return type

[**ExternalEmployeeMapping**](ExternalEmployeeMapping.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



