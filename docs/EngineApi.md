# SwaggerClient::EngineApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**calculate_ni_engine**](EngineApi.md#calculate_ni_engine) | **GET** /engine/ni | Calculate NI due.
[**calculate_tax_engine**](EngineApi.md#calculate_tax_engine) | **GET** /engine/tax | Calculate Tax due.
[**config_engine**](EngineApi.md#config_engine) | **GET** /engine/config | Get Configuration
[**get_tenant_branding_engine**](EngineApi.md#get_tenant_branding_engine) | **GET** /engine/branding/{brandCode} | Tenant Branding
[**period_values_engine**](EngineApi.md#period_values_engine) | **GET** /engine/config/{taxYear}/ni/{payPeriod} | Get Configuration

# **calculate_ni_engine**
> NationalInsuranceCalculation calculate_ni_engine(opts)

Calculate NI due.

Calculates National Insurance Contributions due given the values specified.\\n  You would never need to use this API call in practice. It is provided just for information and testing purposes.\\n  Access is limited so you'll probably receive a 401 response if you try to use it.

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

api_instance = SwaggerClient::EngineApi.new
opts = { 
  tax_year: SwaggerClient::TaxYear.new, # TaxYear | If not provided then current tax year will be used.
  gross: 1.2, # Float | The gross amount for which tax should be calculated.
  ni_category: 'ni_category_example', # String | The letter from the NI table
  pay_period: SwaggerClient::PayPeriods.new # PayPeriods | The PayPeriod (Weekly, Monthly, etc)
}

begin
  #Calculate NI due.
  result = api_instance.calculate_ni_engine(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EngineApi->calculate_ni_engine: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tax_year** | [**TaxYear**](.md)| If not provided then current tax year will be used. | [optional] 
 **gross** | **Float**| The gross amount for which tax should be calculated. | [optional] 
 **ni_category** | **String**| The letter from the NI table | [optional] 
 **pay_period** | [**PayPeriods**](.md)| The PayPeriod (Weekly, Monthly, etc) | [optional] 

### Return type

[**NationalInsuranceCalculation**](NationalInsuranceCalculation.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **calculate_tax_engine**
> Float calculate_tax_engine(opts)

Calculate Tax due.

Calculates tax amount due, given the values specified.\\n  You would never need to use this API call. It is provided just for information and testing purposes.\\n  Access is limited so you'll probably receive a 401 response if you try to use it.

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

api_instance = SwaggerClient::EngineApi.new
opts = { 
  tax_year: SwaggerClient::TaxYear.new, # TaxYear | If not provided then current tax year will be used.
  tax_code: 'tax_code_example', # String | If not provided then the default code for the tax year will be used.
  gross: 1.2, # Float | The gross amount for which tax should be calculated.
  period_start: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 
  period_end: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 
  pay_period: SwaggerClient::PayPeriods.new, # PayPeriods | The PayPeriod (Weekly, Monthly, etc)
  period: 1, # Integer | The period that this payment is being made for
  week1: false, # BOOLEAN | If set to true then tax will be calculated in a Week1/Month1 basis
  gross_to_date: 0, # Float | Gross pay to date
  tax_to_date: 0 # Float | Tax paid to date
}

begin
  #Calculate Tax due.
  result = api_instance.calculate_tax_engine(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EngineApi->calculate_tax_engine: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tax_year** | [**TaxYear**](.md)| If not provided then current tax year will be used. | [optional] 
 **tax_code** | **String**| If not provided then the default code for the tax year will be used. | [optional] 
 **gross** | **Float**| The gross amount for which tax should be calculated. | [optional] 
 **period_start** | **DateTime**|  | [optional] 
 **period_end** | **DateTime**|  | [optional] 
 **pay_period** | [**PayPeriods**](.md)| The PayPeriod (Weekly, Monthly, etc) | [optional] 
 **period** | **Integer**| The period that this payment is being made for | [optional] [default to 1]
 **week1** | **BOOLEAN**| If set to true then tax will be calculated in a Week1/Month1 basis | [optional] [default to false]
 **gross_to_date** | **Float**| Gross pay to date | [optional] [default to 0]
 **tax_to_date** | **Float**| Tax paid to date | [optional] [default to 0]

### Return type

**Float**

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **config_engine**
> TaxYearConfig config_engine(opts)

Get Configuration

Returns the raw configuration data that is used as the basis for any calculations for the given tax year.\\nYou would never need to use this configuration values yourself in any API calls. It is provided just for information purposes

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

api_instance = SwaggerClient::EngineApi.new
opts = { 
  tax_year: SwaggerClient::TaxYear.new # TaxYear | The year that you want to retrieve details for. If not provided then current tax year will be used.
}

begin
  #Get Configuration
  result = api_instance.config_engine(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EngineApi->config_engine: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tax_year** | [**TaxYear**](.md)| The year that you want to retrieve details for. If not provided then current tax year will be used. | [optional] 

### Return type

[**TaxYearConfig**](TaxYearConfig.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_tenant_branding_engine**
> Tenant get_tenant_branding_engine(brand_code)

Tenant Branding

Returns Tenant Branding. Not for public use, will return 401

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

api_instance = SwaggerClient::EngineApi.new
brand_code = 'brand_code_example' # String | The Id of the Tenant you want to retrieve.


begin
  #Tenant Branding
  result = api_instance.get_tenant_branding_engine(brand_code)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EngineApi->get_tenant_branding_engine: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **brand_code** | **String**| The Id of the Tenant you want to retrieve. | 

### Return type

[**Tenant**](Tenant.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **period_values_engine**
> PeriodValues period_values_engine(tax_year, pay_period, opts)

Get Configuration

Returns the National Insurance thresholds for the given PayPeriod

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

api_instance = SwaggerClient::EngineApi.new
tax_year = SwaggerClient::TaxYear.new # TaxYear | The year that you want to retrieve details for.
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | The PayPeriod (ie, monthly) that you want to retrieve details for.
opts = { 
  period_start: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 
  period_end: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | 
}

begin
  #Get Configuration
  result = api_instance.period_values_engine(tax_year, pay_period, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EngineApi->period_values_engine: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tax_year** | [**TaxYear**](.md)| The year that you want to retrieve details for. | 
 **pay_period** | [**PayPeriods**](.md)| The PayPeriod (ie, monthly) that you want to retrieve details for. | 
 **period_start** | **DateTime**|  | [optional] 
 **period_end** | **DateTime**|  | [optional] 

### Return type

[**PeriodValues**](PeriodValues.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



