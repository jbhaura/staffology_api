# SwaggerClient::BillingApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bill_billing**](BillingApi.md#bill_billing) | **GET** /billing/bill/{id} | Get Bill
[**bill_csv_billing**](BillingApi.md#bill_csv_billing) | **GET** /billing/bill/{id}/csv | Get Bill CSV
[**bills_billing**](BillingApi.md#bills_billing) | **GET** /billing/bills | List Bills
[**confirm_direct_debit_mandate_billing**](BillingApi.md#confirm_direct_debit_mandate_billing) | **GET** /billing/directdebit/confirm | Confirm Direct Debit Setup
[**delete_direct_debit_mandate_billing**](BillingApi.md#delete_direct_debit_mandate_billing) | **DELETE** /billing/directdebit | Delete DirectDebitMandate
[**direct_debit_mandate_billing**](BillingApi.md#direct_debit_mandate_billing) | **GET** /billing/directdebit | Get DirectDebitMandate
[**get_usage_stats_billing**](BillingApi.md#get_usage_stats_billing) | **GET** /billing/usage-stats | Get UsageStats Report
[**setup_direct_debit_mandate_billing**](BillingApi.md#setup_direct_debit_mandate_billing) | **GET** /billing/directdebit/setup | Setup DirectDebitMandate

# **bill_billing**
> UsageBill bill_billing(id)

Get Bill

Returns the specified UsageBill

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

api_instance = SwaggerClient::BillingApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Get Bill
  result = api_instance.bill_billing(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BillingApi->bill_billing: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 

### Return type

[**UsageBill**](UsageBill.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **bill_csv_billing**
> ReportResponse bill_csv_billing(id)

Get Bill CSV

Returns the specified UsageBill as a CSV file

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

api_instance = SwaggerClient::BillingApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Get Bill CSV
  result = api_instance.bill_csv_billing(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BillingApi->bill_csv_billing: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 

### Return type

[**ReportResponse**](ReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv



# **bills_billing**
> Array&lt;Item&gt; bills_billing

List Bills

Returns a list of UsageBills for the authenticated account

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

api_instance = SwaggerClient::BillingApi.new

begin
  #List Bills
  result = api_instance.bills_billing
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BillingApi->bills_billing: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **confirm_direct_debit_mandate_billing**
> confirm_direct_debit_mandate_billing(opts)

Confirm Direct Debit Setup

This endpoint is called by an external provider. You will never have to call this endpoint yourself.

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

api_instance = SwaggerClient::BillingApi.new
opts = { 
  redirect_flow_id: 'redirect_flow_id_example' # String | 
}

begin
  #Confirm Direct Debit Setup
  api_instance.confirm_direct_debit_mandate_billing(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BillingApi->confirm_direct_debit_mandate_billing: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **redirect_flow_id** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_direct_debit_mandate_billing**
> delete_direct_debit_mandate_billing

Delete DirectDebitMandate

Cancels and deletes the Direct Debit Mandate for the account

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

api_instance = SwaggerClient::BillingApi.new

begin
  #Delete DirectDebitMandate
  api_instance.delete_direct_debit_mandate_billing
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BillingApi->delete_direct_debit_mandate_billing: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **direct_debit_mandate_billing**
> DirectDebitMandate direct_debit_mandate_billing

Get DirectDebitMandate

Returns the DirectDebitMandate for the authenticated account

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

api_instance = SwaggerClient::BillingApi.new

begin
  #Get DirectDebitMandate
  result = api_instance.direct_debit_mandate_billing
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BillingApi->direct_debit_mandate_billing: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DirectDebitMandate**](DirectDebitMandate.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_usage_stats_billing**
> ReportResponse get_usage_stats_billing(opts)

Get UsageStats Report

Returns usage statistics data for all employers the logged in user has access to for the given date range.  If either of the dates are not provided then the values are defaulted to the first and last date of the previous calendar month.

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

api_instance = SwaggerClient::BillingApi.new
opts = { 
  from_date: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 
  to_date: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 
  accept: 'accept_example' # String | 
}

begin
  #Get UsageStats Report
  result = api_instance.get_usage_stats_billing(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BillingApi->get_usage_stats_billing: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from_date** | **DateTime**|  | [optional] 
 **to_date** | **DateTime**|  | [optional] 
 **accept** | **String**|  | [optional] 

### Return type

[**ReportResponse**](ReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv



# **setup_direct_debit_mandate_billing**
> String setup_direct_debit_mandate_billing(opts)

Setup DirectDebitMandate

Returns a Url to redirect a user to in order to start the process of setting up a Direct Debit Mandate.\\n  Once the process is complete then the user is sent to the URL specified.

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

api_instance = SwaggerClient::BillingApi.new
opts = { 
  return_url: 'return_url_example' # String | 
}

begin
  #Setup DirectDebitMandate
  result = api_instance.setup_direct_debit_mandate_billing(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BillingApi->setup_direct_debit_mandate_billing: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **return_url** | **String**|  | [optional] 

### Return type

**String**

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



