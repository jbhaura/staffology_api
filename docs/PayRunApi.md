# SwaggerClient::PayRunApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aeo_pay_run**](PayRunApi.md#aeo_pay_run) | **GET** /employers/{employerId}/payrun/{taxYear}/{payPeriod}/{periodNumber}/aeo | List AttachmentOrders related to a PayRun
[**changes_for_pay_run_entry_pay_run**](PayRunApi.md#changes_for_pay_run_entry_pay_run) | **GET** /employers/{employerId}/payrun/{taxYear}/{payPeriod}/{periodNumber}/{id}/changes | List PayRun Changes for PayRunEntry
[**changes_pay_run**](PayRunApi.md#changes_pay_run) | **GET** /employers/{employerId}/payrun/{taxYear}/{payPeriod}/{periodNumber}/changes | List PayRun Changes
[**create_next_pay_run_pay_run**](PayRunApi.md#create_next_pay_run_pay_run) | **POST** /employers/{employerId}/payrun/{taxYear}/{payPeriod} | Starts the next PayRun
[**delete_pay_run**](PayRunApi.md#delete_pay_run) | **DELETE** /employers/{employerId}/payrun/{taxYear}/{payPeriod}/{periodNumber} | Delete a PayRun
[**finalise_pay_run_pay_run**](PayRunApi.md#finalise_pay_run_pay_run) | **POST** /employers/{employerId}/payrun/{taxYear}/{payPeriod}/{periodNumber}/finalise | Finalise a PayRun (deprecated)
[**get_pay_run_entry_pay_run**](PayRunApi.md#get_pay_run_entry_pay_run) | **GET** /employers/{employerId}/payrun/{taxYear}/{payPeriod}/{periodNumber}/{id} | Get a PayRunEntry
[**get_pay_run_events_pay_run**](PayRunApi.md#get_pay_run_events_pay_run) | **GET** /employers/{employerId}/payrun/{taxYear}/{payPeriod}/{periodNumber}/events | Get PayPeriodEvents
[**get_pay_run_journal_pay_run**](PayRunApi.md#get_pay_run_journal_pay_run) | **GET** /employers/{employerId}/payrun/{taxYear}/{payPeriod}/{periodNumber}/journal | Get Journal for PayRun
[**get_pay_run_pay_codes_pay_run**](PayRunApi.md#get_pay_run_pay_codes_pay_run) | **GET** /employers/{employerId}/payrun/{taxYear}/{payPeriod}/{periodNumber}/paycodes | Get PayCodes for a PayRun
[**get_pay_run_pay_run**](PayRunApi.md#get_pay_run_pay_run) | **GET** /employers/{employerId}/payrun/{taxYear}/{payPeriod}/{periodNumber} | Get a PayRun
[**get_pay_runs_pay_run**](PayRunApi.md#get_pay_runs_pay_run) | **GET** /employers/{employerId}/payrun/{taxYear}/{payPeriod} | List PayRuns
[**import_pay_pay_run**](PayRunApi.md#import_pay_pay_run) | **POST** /employers/{employerId}/payrun/{payPeriod}/importpay | Import Pay
[**import_time_and_attendance_pay_run**](PayRunApi.md#import_time_and_attendance_pay_run) | **POST** /employers/{employerId}/payrun/{payPeriod}/importtimeandattendance | Import Time And Attendance
[**import_umbrella_pay_pay_run**](PayRunApi.md#import_umbrella_pay_pay_run) | **POST** /employers/{employerId}/payrun/{payPeriod}/importumbrellapay | Import Umbrella Pay
[**leave_pay_run**](PayRunApi.md#leave_pay_run) | **GET** /employers/{employerId}/payrun/{taxYear}/{payPeriod}/{periodNumber}/leave | List Leave related to a PayRun
[**pay_run_entry_umbrella_payment_pay_run**](PayRunApi.md#pay_run_entry_umbrella_payment_pay_run) | **POST** /employers/{employerId}/payrun/{taxYear}/{payPeriod}/{periodNumber}/{id}/umbrella | PayRunEntry Umbrella Payment
[**re_open_pay_run_pay_run**](PayRunApi.md#re_open_pay_run_pay_run) | **POST** /employers/{employerId}/payrun/{taxYear}/{payPeriod}/{periodNumber}/reopen | Re-open a PayRun (deprecated)
[**send_payslip_emails_pay_run**](PayRunApi.md#send_payslip_emails_pay_run) | **POST** /employers/{employerId}/payrun/{taxYear}/{payPeriod}/{periodNumber}/email | (Re)send Payslip Emails
[**start_next_pay_run_pay_run**](PayRunApi.md#start_next_pay_run_pay_run) | **PUT** /employers/{employerId}/payrun/{taxYear}/{payPeriod} | Starts the next PayRun (deprecated)
[**update_pay_run_entry_pay_run**](PayRunApi.md#update_pay_run_entry_pay_run) | **POST** /employers/{employerId}/payrun/{taxYear}/{payPeriod}/{periodNumber}/{id} | Update a PayRunEntry
[**update_pay_run_pay_run**](PayRunApi.md#update_pay_run_pay_run) | **PUT** /employers/{employerId}/payrun/{taxYear}/{payPeriod}/{periodNumber} | Update PayRun
[**update_payment_date_pay_run**](PayRunApi.md#update_payment_date_pay_run) | **POST** /employers/{employerId}/payrun/{taxYear}/{payPeriod}/{periodNumber}/paymentdate | Set PaymentDate
[**zeroise_pay_run_entries_pay_run**](PayRunApi.md#zeroise_pay_run_entries_pay_run) | **POST** /employers/{employerId}/payrun/{taxYear}/{payPeriod}/{periodNumber}/zeroise | Zeroise PayRunEntries

# **aeo_pay_run**
> Array&lt;Item&gt; aeo_pay_run(employer_id, pay_period, period_number, tax_year, opts)

List AttachmentOrders related to a PayRun

Returns a List of Items representing any AttachmentOrders within the PayRun date range for Employees that are included in the given PayRun.\\n

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

api_instance = SwaggerClient::PayRunApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
period_number = 56 # Integer | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  ordinal: 1 # Integer | 
}

begin
  #List AttachmentOrders related to a PayRun
  result = api_instance.aeo_pay_run(employer_id, pay_period, period_number, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayRunApi->aeo_pay_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **period_number** | **Integer**|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **ordinal** | **Integer**|  | [optional] [default to 1]

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **changes_for_pay_run_entry_pay_run**
> Array&lt;AuditEntryInfo&gt; changes_for_pay_run_entry_pay_run(employer_id, id, pay_period, period_number, tax_year, opts)

List PayRun Changes for PayRunEntry

Returns a list of AuditEntry reflecting changes made to a PayRunEntry and related employee record for a given PayRun  \\nThis endpoint is currently being beta tested and subject to un-announced breaking changes.

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

api_instance = SwaggerClient::PayRunApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
period_number = 56 # Integer | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  ordinal: 1, # Integer | 
  significant_changes_only: false # BOOLEAN | 
}

begin
  #List PayRun Changes for PayRunEntry
  result = api_instance.changes_for_pay_run_entry_pay_run(employer_id, id, pay_period, period_number, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayRunApi->changes_for_pay_run_entry_pay_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **period_number** | **Integer**|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **ordinal** | **Integer**|  | [optional] [default to 1]
 **significant_changes_only** | **BOOLEAN**|  | [optional] [default to false]

### Return type

[**Array&lt;AuditEntryInfo&gt;**](AuditEntryInfo.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **changes_pay_run**
> PayRunModifications changes_pay_run(employer_id, pay_period, period_number, tax_year, opts)

List PayRun Changes

Returns a of changes made to a payrun.\\nThis endpoint is currently being beta tested and subject to un-announced breaking changes.

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

api_instance = SwaggerClient::PayRunApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
period_number = 56 # Integer | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  ordinal: 1, # Integer | 
  verbose: false # BOOLEAN | By default you will just receive a list of employees that have changed.\\n              If you want a list of the changes too then set this to true
}

begin
  #List PayRun Changes
  result = api_instance.changes_pay_run(employer_id, pay_period, period_number, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayRunApi->changes_pay_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **period_number** | **Integer**|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **ordinal** | **Integer**|  | [optional] [default to 1]
 **verbose** | **BOOLEAN**| By default you will just receive a list of employees that have changed.\\n              If you want a list of the changes too then set this to true | [optional] [default to false]

### Return type

[**PayRunModifications**](PayRunModifications.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_next_pay_run_pay_run**
> PayRun create_next_pay_run_pay_run(employer_id, pay_period, tax_year, opts)

Starts the next PayRun

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

api_instance = SwaggerClient::PayRunApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  ordinal: 1 # Integer | 
}

begin
  #Starts the next PayRun
  result = api_instance.create_next_pay_run_pay_run(employer_id, pay_period, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayRunApi->create_next_pay_run_pay_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **ordinal** | **Integer**|  | [optional] [default to 1]

### Return type

[**PayRun**](PayRun.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_pay_run**
> delete_pay_run(employer_id, pay_period, period_number, tax_year, opts)

Delete a PayRun

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

api_instance = SwaggerClient::PayRunApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
period_number = 56 # Integer | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  ordinal: 1 # Integer | 
}

begin
  #Delete a PayRun
  api_instance.delete_pay_run(employer_id, pay_period, period_number, tax_year, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayRunApi->delete_pay_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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



# **finalise_pay_run_pay_run**
> BOOLEAN finalise_pay_run_pay_run(employer_idpay_periodperiod_numbertax_year, opts)

Finalise a PayRun (deprecated)

This endpoint is now deprecated and will be removed in Jan 2022.\\n  You should instead use the Update method and set the State to Finalised.    Returns True if the resulting FPS has been automatically submitted due to the Employers RTISubmissionSettings, otherwise returns false.\\n  You can suppress the emailing of payslips to employees by adding a key named dontEmailEmployeePayslips with a value of true to the body. See the related guides for more information.

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

api_instance = SwaggerClient::PayRunApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
period_number = 56 # Integer | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  body: nil # Hash<String, null> | 
  ordinal: 1 # Integer | 
}

begin
  #Finalise a PayRun (deprecated)
  result = api_instance.finalise_pay_run_pay_run(employer_idpay_periodperiod_numbertax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayRunApi->finalise_pay_run_pay_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **period_number** | **Integer**|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **body** | [**Hash&lt;String, null&gt;**](Hash.md)|  | [optional] 
 **ordinal** | **Integer**|  | [optional] [default to 1]

### Return type

**BOOLEAN**

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **get_pay_run_entry_pay_run**
> PayRunEntry get_pay_run_entry_pay_run(employer_id, pay_period, period_number, tax_year, id, opts)

Get a PayRunEntry

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

api_instance = SwaggerClient::PayRunApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
period_number = 56 # Integer | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  ordinal: 1 # Integer | 
}

begin
  #Get a PayRunEntry
  result = api_instance.get_pay_run_entry_pay_run(employer_id, pay_period, period_number, tax_year, id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayRunApi->get_pay_run_entry_pay_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **period_number** | **Integer**|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **id** | [**String**](.md)|  | 
 **ordinal** | **Integer**|  | [optional] [default to 1]

### Return type

[**PayRunEntry**](PayRunEntry.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pay_run_events_pay_run**
> Array&lt;PaySchedulePeriodEvent&gt; get_pay_run_events_pay_run(employer_id, pay_period, period_number, tax_year, opts)

Get PayPeriodEvents

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

api_instance = SwaggerClient::PayRunApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
period_number = 56 # Integer | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  ordinal: 1 # Integer | 
}

begin
  #Get PayPeriodEvents
  result = api_instance.get_pay_run_events_pay_run(employer_id, pay_period, period_number, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayRunApi->get_pay_run_events_pay_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **period_number** | **Integer**|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **ordinal** | **Integer**|  | [optional] [default to 1]

### Return type

[**Array&lt;PaySchedulePeriodEvent&gt;**](PaySchedulePeriodEvent.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pay_run_journal_pay_run**
> PayRunJournal get_pay_run_journal_pay_run(employer_id, pay_period, period_number, tax_year, opts)

Get Journal for PayRun

Returns values that can be used to create accounting entries for this PayRun.

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

api_instance = SwaggerClient::PayRunApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
period_number = 56 # Integer | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  ordinal: 1, # Integer | 
  dept_breakdown: false # BOOLEAN | Set to true and the journal will be split between any relevant Departments
}

begin
  #Get Journal for PayRun
  result = api_instance.get_pay_run_journal_pay_run(employer_id, pay_period, period_number, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayRunApi->get_pay_run_journal_pay_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **period_number** | **Integer**|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **ordinal** | **Integer**|  | [optional] [default to 1]
 **dept_breakdown** | **BOOLEAN**| Set to true and the journal will be split between any relevant Departments | [optional] [default to false]

### Return type

[**PayRunJournal**](PayRunJournal.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pay_run_pay_codes_pay_run**
> Array&lt;PayCode&gt; get_pay_run_pay_codes_pay_run(employer_id, pay_period, period_number, tax_year, opts)

Get PayCodes for a PayRun

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

api_instance = SwaggerClient::PayRunApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
period_number = 56 # Integer | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  ordinal: 1 # Integer | 
}

begin
  #Get PayCodes for a PayRun
  result = api_instance.get_pay_run_pay_codes_pay_run(employer_id, pay_period, period_number, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayRunApi->get_pay_run_pay_codes_pay_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **period_number** | **Integer**|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **ordinal** | **Integer**|  | [optional] [default to 1]

### Return type

[**Array&lt;PayCode&gt;**](PayCode.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pay_run_pay_run**
> PayRun get_pay_run_pay_run(employer_id, pay_period, period_number, tax_year, opts)

Get a PayRun

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

api_instance = SwaggerClient::PayRunApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
period_number = 56 # Integer | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  ordinal: 1 # Integer | 
}

begin
  #Get a PayRun
  result = api_instance.get_pay_run_pay_run(employer_id, pay_period, period_number, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayRunApi->get_pay_run_pay_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **period_number** | **Integer**|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **ordinal** | **Integer**|  | [optional] [default to 1]

### Return type

[**PayRun**](PayRun.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pay_runs_pay_run**
> Array&lt;Item&gt; get_pay_runs_pay_run(employer_id, pay_period, tax_year, opts)

List PayRuns

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

api_instance = SwaggerClient::PayRunApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  ordinal: 1 # Integer | 
}

begin
  #List PayRuns
  result = api_instance.get_pay_runs_pay_run(employer_id, pay_period, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayRunApi->get_pay_runs_pay_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **ordinal** | **Integer**|  | [optional] [default to 1]

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **import_pay_pay_run**
> PayRunEntry import_pay_pay_run(employer_idpay_period, opts)

Import Pay

Takes a list PayOptionsImport and updates the currently open payrun to use the amounts given.\\n  You must have an open payrun for the PayPeriod specified and all payroll codes submitted must match an employee on the payrun.\\n  Any lines imported for a PayRunEntry will replace existing lines for that PayRunEntry.

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

api_instance = SwaggerClient::PayRunApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
opts = { 
  body: [SwaggerClient::PayOptionsImport.new] # Array<PayOptionsImport> | 
  ordinal: 1 # Integer | 
  lines_only: false # BOOLEAN | If set to true then only lines will be imported. Changes to regular pay will be ignored. Defaults to false.
  append: false # BOOLEAN | If set to true then the lines submitted will be appended to existing lines rather than replace them. Defaults to false.
}

begin
  #Import Pay
  result = api_instance.import_pay_pay_run(employer_idpay_period, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayRunApi->import_pay_pay_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **body** | [**Array&lt;PayOptionsImport&gt;**](PayOptionsImport.md)|  | [optional] 
 **ordinal** | **Integer**|  | [optional] [default to 1]
 **lines_only** | **BOOLEAN**| If set to true then only lines will be imported. Changes to regular pay will be ignored. Defaults to false. | [optional] [default to false]
 **append** | **BOOLEAN**| If set to true then the lines submitted will be appended to existing lines rather than replace them. Defaults to false. | [optional] [default to false]

### Return type

[**PayRunEntry**](PayRunEntry.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **import_time_and_attendance_pay_run**
> Array&lt;PayOptionsImport&gt; import_time_and_attendance_pay_run(employer_id, pay_period, opts)

Import Time And Attendance

If the employer is connected to an ExternalDataProvider that provides Time and Attendance data then this API  call will update the currently open payrun for the PayPeriod specified with data from the specified provider.\\n  Returns a list of PayOptionsImport to show what's been imported.

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

api_instance = SwaggerClient::PayRunApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
opts = { 
  provider_id: SwaggerClient::ExternalDataProviderId.new, # ExternalDataProviderId | 
  ordinal: 1 # Integer | 
}

begin
  #Import Time And Attendance
  result = api_instance.import_time_and_attendance_pay_run(employer_id, pay_period, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayRunApi->import_time_and_attendance_pay_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **provider_id** | [**ExternalDataProviderId**](.md)|  | [optional] 
 **ordinal** | **Integer**|  | [optional] [default to 1]

### Return type

[**Array&lt;PayOptionsImport&gt;**](PayOptionsImport.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **import_umbrella_pay_pay_run**
> PayRunEntry import_umbrella_pay_pay_run(employer_idpay_period, opts)

Import Umbrella Pay

Takes a list UmbrellaPayment and updates the currently open payrun to use the amounts given.\\n  You must have an open payrun for the PayPeriod specified and all payroll codes submitted must match an employee on the payrun.\\n  You should have also set the UmbrellaSettings for the Employer

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

api_instance = SwaggerClient::PayRunApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
opts = { 
  body: [SwaggerClient::UmbrellaPayment.new] # Array<UmbrellaPayment> | 
  ordinal: 1 # Integer | 
}

begin
  #Import Umbrella Pay
  result = api_instance.import_umbrella_pay_pay_run(employer_idpay_period, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayRunApi->import_umbrella_pay_pay_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **body** | [**Array&lt;UmbrellaPayment&gt;**](UmbrellaPayment.md)|  | [optional] 
 **ordinal** | **Integer**|  | [optional] [default to 1]

### Return type

[**PayRunEntry**](PayRunEntry.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **leave_pay_run**
> Array&lt;Item&gt; leave_pay_run(employer_id, pay_period, period_number, tax_year, opts)

List Leave related to a PayRun

Returns a List of Items representing any Leave within the PayRun date range for Employees that are included in the given PayRun.\\n  Note that if Leave was added after the PayRun was closed, but the Leave is within the PayRun period then it'll be returned here even though it wouldn't have been processed with the PayRun.

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

api_instance = SwaggerClient::PayRunApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
period_number = 56 # Integer | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  ordinal: 1 # Integer | 
}

begin
  #List Leave related to a PayRun
  result = api_instance.leave_pay_run(employer_id, pay_period, period_number, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayRunApi->leave_pay_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **period_number** | **Integer**|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **ordinal** | **Integer**|  | [optional] [default to 1]

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **pay_run_entry_umbrella_payment_pay_run**
> PayRunEntry pay_run_entry_umbrella_payment_pay_run(employer_idpay_periodperiod_numbertax_yearid, opts)

PayRunEntry Umbrella Payment

Automatically sets the values on the PayRunEntry based on an UmbrellaPayment.\\n  Using this method overwrites any existing values for the PayRunEntry.

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

api_instance = SwaggerClient::PayRunApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
period_number = 56 # Integer | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  body: SwaggerClient::UmbrellaPayment.new # UmbrellaPayment | 
  ordinal: 1 # Integer | 
}

begin
  #PayRunEntry Umbrella Payment
  result = api_instance.pay_run_entry_umbrella_payment_pay_run(employer_idpay_periodperiod_numbertax_yearid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayRunApi->pay_run_entry_umbrella_payment_pay_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **period_number** | **Integer**|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **id** | [**String**](.md)|  | 
 **body** | [**UmbrellaPayment**](UmbrellaPayment.md)|  | [optional] 
 **ordinal** | **Integer**|  | [optional] [default to 1]

### Return type

[**PayRunEntry**](PayRunEntry.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **re_open_pay_run_pay_run**
> PayRun re_open_pay_run_pay_run(employer_id, pay_period, period_number, tax_year, opts)

Re-open a PayRun (deprecated)

This endpoint is now deprecated and will be removed in Jan 2022. \\n  You should instead use the Update method and set the State to Open.    Re-opens a PayRun so that it can be edited.\\n  Only the most recent PayRun can be re-opened, and only if the Employer is still in the same TaxYear as the PayRun and there are no open PayRuns.

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

api_instance = SwaggerClient::PayRunApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
period_number = 56 # Integer | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  ordinal: 1 # Integer | 
}

begin
  #Re-open a PayRun (deprecated)
  result = api_instance.re_open_pay_run_pay_run(employer_id, pay_period, period_number, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayRunApi->re_open_pay_run_pay_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **period_number** | **Integer**|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **ordinal** | **Integer**|  | [optional] [default to 1]

### Return type

[**PayRun**](PayRun.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **send_payslip_emails_pay_run**
> send_payslip_emails_pay_run(employer_id, pay_period, period_number, tax_year, opts)

(Re)send Payslip Emails

Payslips are usually emailed automatically when a PayRun is finalised. But if you suppressed them or need to re-send them then you can do so with this API call.

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

api_instance = SwaggerClient::PayRunApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
period_number = 56 # Integer | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  ordinal: 1 # Integer | 
}

begin
  #(Re)send Payslip Emails
  api_instance.send_payslip_emails_pay_run(employer_id, pay_period, period_number, tax_year, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayRunApi->send_payslip_emails_pay_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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



# **start_next_pay_run_pay_run**
> start_next_pay_run_pay_run(employer_id, pay_period, tax_year, opts)

Starts the next PayRun (deprecated)

This PUT will be removed in Jan 2022. You should instead use a POST to this URL

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

api_instance = SwaggerClient::PayRunApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  ordinal: 1 # Integer | 
}

begin
  #Starts the next PayRun (deprecated)
  api_instance.start_next_pay_run_pay_run(employer_id, pay_period, tax_year, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayRunApi->start_next_pay_run_pay_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **ordinal** | **Integer**|  | [optional] [default to 1]

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **update_pay_run_entry_pay_run**
> PayRunEntry update_pay_run_entry_pay_run(employer_idpay_periodperiod_numbertax_yearid, opts)

Update a PayRunEntry

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

api_instance = SwaggerClient::PayRunApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
period_number = 56 # Integer | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  body: SwaggerClient::PayRunEntry.new # PayRunEntry | 
  ordinal: 1 # Integer | 
}

begin
  #Update a PayRunEntry
  result = api_instance.update_pay_run_entry_pay_run(employer_idpay_periodperiod_numbertax_yearid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayRunApi->update_pay_run_entry_pay_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **period_number** | **Integer**|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **id** | [**String**](.md)|  | 
 **body** | [**PayRunEntry**](PayRunEntry.md)|  | [optional] 
 **ordinal** | **Integer**|  | [optional] [default to 1]

### Return type

[**PayRunEntry**](PayRunEntry.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **update_pay_run_pay_run**
> PayRun update_pay_run_pay_run(employer_idtax_yearpay_periodperiod_number, opts)

Update PayRun

Updates a PayRun to the state provided along with the reason (optional) for the change.

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

api_instance = SwaggerClient::PayRunApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
period_number = 56 # Integer | 
opts = { 
  body: SwaggerClient::PayRunStateChange.new # PayRunStateChange | Specify the PayRun state you want to change to and the reason for the change.
Only Open and Finalised states are available at the moment.
Other states are used with Bureau functionality which isn't currently generally available.
  ordinal: 1 # Integer | 
  send_payslip_emails: false # BOOLEAN | Only relevant if setting the State to Finalised. Set to true if you want to have payslips emailed to employees.
}

begin
  #Update PayRun
  result = api_instance.update_pay_run_pay_run(employer_idtax_yearpay_periodperiod_number, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayRunApi->update_pay_run_pay_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **period_number** | **Integer**|  | 
 **body** | [**PayRunStateChange**](PayRunStateChange.md)| Specify the PayRun state you want to change to and the reason for the change.
Only Open and Finalised states are available at the moment.
Other states are used with Bureau functionality which isn&#x27;t currently generally available. | [optional] 
 **ordinal** | **Integer**|  | [optional] [default to 1]
 **send_payslip_emails** | **BOOLEAN**| Only relevant if setting the State to Finalised. Set to true if you want to have payslips emailed to employees. | [optional] [default to false]

### Return type

[**PayRun**](PayRun.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **update_payment_date_pay_run**
> PayRun update_payment_date_pay_run(employer_idpay_periodperiod_numbertax_year, opts)

Set PaymentDate

Sets the PaymentDate for a PayRun.\\n  If the date given is outside of the TaxPeriod that the payrun is for then only the payment date for the individual   PayRunEntries is updated, the PayRun will retain it's current PaymentDate

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

api_instance = SwaggerClient::PayRunApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
period_number = 56 # Integer | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  body: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | 
  ordinal: 1 # Integer | 
}

begin
  #Set PaymentDate
  result = api_instance.update_payment_date_pay_run(employer_idpay_periodperiod_numbertax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayRunApi->update_payment_date_pay_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **period_number** | **Integer**|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **body** | [**DateTime**](DateTime.md)|  | [optional] 
 **ordinal** | **Integer**|  | [optional] [default to 1]

### Return type

[**PayRun**](PayRun.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **zeroise_pay_run_entries_pay_run**
> PayRun zeroise_pay_run_entries_pay_run(employer_idpay_periodperiod_numbertax_year, opts)

Zeroise PayRunEntries

Zeroises the payrun entries specified in the ids property

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

api_instance = SwaggerClient::PayRunApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
period_number = 56 # Integer | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  body: ['body_example'] # Array<String> | 
  ordinal: 1 # Integer | 
}

begin
  #Zeroise PayRunEntries
  result = api_instance.zeroise_pay_run_entries_pay_run(employer_idpay_periodperiod_numbertax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayRunApi->zeroise_pay_run_entries_pay_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **period_number** | **Integer**|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **body** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **ordinal** | **Integer**|  | [optional] [default to 1]

### Return type

[**PayRun**](PayRun.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



