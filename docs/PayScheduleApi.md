# SwaggerClient::PayScheduleApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_pay_schedule**](PayScheduleApi.md#create_pay_schedule) | **POST** /employers/{employerId}/schedules/{taxYear}/{payPeriod}/{ordinal} | Create a PaySchedule
[**delete_pay_schedule**](PayScheduleApi.md#delete_pay_schedule) | **DELETE** /employers/{employerId}/schedules/{taxYear}/{payPeriod}/{ordinal} | Delete PaySchedule
[**get_all_pay_schedule**](PayScheduleApi.md#get_all_pay_schedule) | **GET** /employers/{employerId}/schedules/{taxYear} | Get PaySchedules
[**get_pay_schedule**](PayScheduleApi.md#get_pay_schedule) | **GET** /employers/{employerId}/schedules/{taxYear}/{payPeriod}/{ordinal} | Get PaySchedule
[**get_periods_pay_schedule**](PayScheduleApi.md#get_periods_pay_schedule) | **GET** /employers/{employerId}/schedules/{taxYear}/{payPeriod}/{ordinal}/periods | Get PaySchedulePeriods
[**save_pay_schedule**](PayScheduleApi.md#save_pay_schedule) | **PUT** /employers/{employerId}/schedules/{taxYear}/{payPeriod}/{ordinal} | Update PaySchedule
[**update_pay_schedule_period_pay_schedule**](PayScheduleApi.md#update_pay_schedule_period_pay_schedule) | **PUT** /employers/{employerId}/schedules/{taxYear}/{payPeriod}/{ordinal}/periods/{periodNumber} | Update PaySchedulePeriod

# **create_pay_schedule**
> create_pay_schedule(employer_idpay_periodtax_year, opts)

Create a PaySchedule

Create PaySchedule using a certain pay frequency.

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

api_instance = SwaggerClient::PayScheduleApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer for which you want to update the PaySchedule
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | The PayPeriod (ie, Monthly) that you want to update details for.
tax_year = SwaggerClient::TaxYear.new # TaxYear | The year that the PaySchedule is for.
opts = { 
  body: SwaggerClient::PaySchedule.new # PaySchedule | 
  ordinal: 1 # Integer | Optionally specify the second, third, fourth (etc) PaySchedule for this PayPeriod. Defaults to 1 (first)
}

begin
  #Create a PaySchedule
  api_instance.create_pay_schedule(employer_idpay_periodtax_year, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayScheduleApi->create_pay_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer for which you want to update the PaySchedule | 
 **pay_period** | [**PayPeriods**](.md)| The PayPeriod (ie, Monthly) that you want to update details for. | 
 **tax_year** | [**TaxYear**](.md)| The year that the PaySchedule is for. | 
 **body** | [**PaySchedule**](PaySchedule.md)|  | [optional] 
 **ordinal** | **Integer**| Optionally specify the second, third, fourth (etc) PaySchedule for this PayPeriod. Defaults to 1 (first) | [optional] [default to 1]

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined



# **delete_pay_schedule**
> delete_pay_schedule(employer_id, pay_period, tax_year, opts)

Delete PaySchedule

Delete the PaySchedule for the PayPeriod and TaxYear specified.

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

api_instance = SwaggerClient::PayScheduleApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer for which you want to get the PaySchedule
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | The PayPeriod (ie, Monthly) that you want to retrieve details for.
tax_year = SwaggerClient::TaxYear.new # TaxYear | The year that you want to retrieve details for.
opts = { 
  ordinal: 1 # Integer | Optionally specify the second, third, fourth (etc) PaySchedule for this PayPeriod. Defaults to 1 (first)
}

begin
  #Delete PaySchedule
  api_instance.delete_pay_schedule(employer_id, pay_period, tax_year, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayScheduleApi->delete_pay_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer for which you want to get the PaySchedule | 
 **pay_period** | [**PayPeriods**](.md)| The PayPeriod (ie, Monthly) that you want to retrieve details for. | 
 **tax_year** | [**TaxYear**](.md)| The year that you want to retrieve details for. | 
 **ordinal** | **Integer**| Optionally specify the second, third, fourth (etc) PaySchedule for this PayPeriod. Defaults to 1 (first) | [optional] [default to 1]

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_all_pay_schedule**
> Array&lt;PaySchedule&gt; get_all_pay_schedule(employer_id, tax_year)

Get PaySchedules

Get all PaySchedules for the given TaxYear.

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

api_instance = SwaggerClient::PayScheduleApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer for which you want to get the PaySchedule
tax_year = SwaggerClient::TaxYear.new # TaxYear | The year that you want to retrieve details for.


begin
  #Get PaySchedules
  result = api_instance.get_all_pay_schedule(employer_id, tax_year)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayScheduleApi->get_all_pay_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer for which you want to get the PaySchedule | 
 **tax_year** | [**TaxYear**](.md)| The year that you want to retrieve details for. | 

### Return type

[**Array&lt;PaySchedule&gt;**](PaySchedule.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pay_schedule**
> PaySchedule get_pay_schedule(employer_id, pay_period, tax_year, opts)

Get PaySchedule

Get the PaySchedule for the PayPeriod and TaxYear specified.

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

api_instance = SwaggerClient::PayScheduleApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer for which you want to get the PaySchedule
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | The PayPeriod (ie, Monthly) that you want to retrieve details for.
tax_year = SwaggerClient::TaxYear.new # TaxYear | The year that you want to retrieve details for.
opts = { 
  ordinal: 1 # Integer | Optionally specify the second, third, fourth (etc) PaySchedule for this PayPeriod. Defaults to 1 (first)
}

begin
  #Get PaySchedule
  result = api_instance.get_pay_schedule(employer_id, pay_period, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayScheduleApi->get_pay_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer for which you want to get the PaySchedule | 
 **pay_period** | [**PayPeriods**](.md)| The PayPeriod (ie, Monthly) that you want to retrieve details for. | 
 **tax_year** | [**TaxYear**](.md)| The year that you want to retrieve details for. | 
 **ordinal** | **Integer**| Optionally specify the second, third, fourth (etc) PaySchedule for this PayPeriod. Defaults to 1 (first) | [optional] [default to 1]

### Return type

[**PaySchedule**](PaySchedule.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_periods_pay_schedule**
> Array&lt;PaySchedulePeriod&gt; get_periods_pay_schedule(employer_id, pay_period, tax_year, ordinal, opts)

Get PaySchedulePeriods

Get the PaySchedulePeriods for PaySchedule specified.

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

api_instance = SwaggerClient::PayScheduleApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer for which you want to get the PaySchedule periods
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | The PayPeriod (ie, Monthly) that you want to retrieve details for
tax_year = SwaggerClient::TaxYear.new # TaxYear | The year that you want to retrieve details for
ordinal = 56 # Integer | Optionally specify the second, third, fourth (etc) PaySchedule for this PayPeriod. Defaults to 1 (first)
opts = { 
  period_number: 56, # Integer | Optionally specify a period number to get a result just for that period
  include_events: false # BOOLEAN | 
}

begin
  #Get PaySchedulePeriods
  result = api_instance.get_periods_pay_schedule(employer_id, pay_period, tax_year, ordinal, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayScheduleApi->get_periods_pay_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer for which you want to get the PaySchedule periods | 
 **pay_period** | [**PayPeriods**](.md)| The PayPeriod (ie, Monthly) that you want to retrieve details for | 
 **tax_year** | [**TaxYear**](.md)| The year that you want to retrieve details for | 
 **ordinal** | **Integer**| Optionally specify the second, third, fourth (etc) PaySchedule for this PayPeriod. Defaults to 1 (first) | 
 **period_number** | **Integer**| Optionally specify a period number to get a result just for that period | [optional] 
 **include_events** | **BOOLEAN**|  | [optional] [default to false]

### Return type

[**Array&lt;PaySchedulePeriod&gt;**](PaySchedulePeriod.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **save_pay_schedule**
> PaySchedule save_pay_schedule(employer_idpay_periodtax_year, opts)

Update PaySchedule

Update PaySchedule for the PayPeriod.

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

api_instance = SwaggerClient::PayScheduleApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer for which you want to update the PaySchedule
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | The PayPeriod (ie, Monthly) that you want to update details for.
tax_year = SwaggerClient::TaxYear.new # TaxYear | The year that the PaySchedule is for.
opts = { 
  body: SwaggerClient::PaySchedule.new # PaySchedule | 
  ordinal: 1 # Integer | Optionally specify the second, third, fourth (etc) PaySchedule for this PayPeriod. Defaults to 1 (first)
}

begin
  #Update PaySchedule
  result = api_instance.save_pay_schedule(employer_idpay_periodtax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayScheduleApi->save_pay_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer for which you want to update the PaySchedule | 
 **pay_period** | [**PayPeriods**](.md)| The PayPeriod (ie, Monthly) that you want to update details for. | 
 **tax_year** | [**TaxYear**](.md)| The year that the PaySchedule is for. | 
 **body** | [**PaySchedule**](PaySchedule.md)|  | [optional] 
 **ordinal** | **Integer**| Optionally specify the second, third, fourth (etc) PaySchedule for this PayPeriod. Defaults to 1 (first) | [optional] [default to 1]

### Return type

[**PaySchedule**](PaySchedule.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **update_pay_schedule_period_pay_schedule**
> PaySchedulePeriod update_pay_schedule_period_pay_schedule(employer_idpay_periodtax_yearordinalperiod_number, opts)

Update PaySchedulePeriod

Update the PaymentDate for a PaySchedulePeriod.

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

api_instance = SwaggerClient::PayScheduleApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer for which you want to update the PaySchedulePeriod
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | The PayPeriod (ie, Monthly) that you want to update details for
tax_year = SwaggerClient::TaxYear.new # TaxYear | The year that the PaySchedule is for
ordinal = 56 # Integer | Specify the first, second, third (etc) PaySchedule for this PayPeriod.
period_number = 56 # Integer | Specify the number of the period that you want to update the PaymentDate for
opts = { 
  body: SwaggerClient::PaySchedulePeriod.new # PaySchedulePeriod | 
}

begin
  #Update PaySchedulePeriod
  result = api_instance.update_pay_schedule_period_pay_schedule(employer_idpay_periodtax_yearordinalperiod_number, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayScheduleApi->update_pay_schedule_period_pay_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer for which you want to update the PaySchedulePeriod | 
 **pay_period** | [**PayPeriods**](.md)| The PayPeriod (ie, Monthly) that you want to update details for | 
 **tax_year** | [**TaxYear**](.md)| The year that the PaySchedule is for | 
 **ordinal** | **Integer**| Specify the first, second, third (etc) PaySchedule for this PayPeriod. | 
 **period_number** | **Integer**| Specify the number of the period that you want to update the PaymentDate for | 
 **body** | [**PaySchedulePeriod**](PaySchedulePeriod.md)|  | [optional] 

### Return type

[**PaySchedulePeriod**](PaySchedulePeriod.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



