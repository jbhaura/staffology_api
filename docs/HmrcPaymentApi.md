# SwaggerClient::HmrcPaymentApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_hmrc_payment**](HmrcPaymentApi.md#get_hmrc_payment) | **GET** /employers/{employerId}/hmrcpayment/{taxYear}/{periodEnding} | Get HmrcLiability
[**index_hmrc_payment**](HmrcPaymentApi.md#index_hmrc_payment) | **GET** /employers/{employerId}/hmrcpayment/{taxYear} | List HmrcLiabilities
[**update_hmrc_payment**](HmrcPaymentApi.md#update_hmrc_payment) | **PUT** /employers/{employerId}/hmrcpayment/{taxYear}/{periodEnding} | Update HmrcLiability

# **get_hmrc_payment**
> HmrcLiability get_hmrc_payment(employer_id, tax_year, period_ending)

Get HmrcLiability

Gets the HmrcLiability record for the period ending on the date specified.

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

api_instance = SwaggerClient::HmrcPaymentApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
period_ending = DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | The final date of the month or quarter that the HmrcLiability is for.


begin
  #Get HmrcLiability
  result = api_instance.get_hmrc_payment(employer_id, tax_year, period_ending)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling HmrcPaymentApi->get_hmrc_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **period_ending** | **DateTime**| The final date of the month or quarter that the HmrcLiability is for. | 

### Return type

[**HmrcLiability**](HmrcLiability.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **index_hmrc_payment**
> Array&lt;Item&gt; index_hmrc_payment(employer_id, tax_year)

List HmrcLiabilities

Lists all periods for which a payment is due to HMRC in the given TaxYear

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

api_instance = SwaggerClient::HmrcPaymentApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer for which you want to list HMRC Payments
tax_year = SwaggerClient::TaxYear.new # TaxYear | 


begin
  #List HmrcLiabilities
  result = api_instance.index_hmrc_payment(employer_id, tax_year)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling HmrcPaymentApi->index_hmrc_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer for which you want to list HMRC Payments | 
 **tax_year** | [**TaxYear**](.md)|  | 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_hmrc_payment**
> HmrcLiability update_hmrc_payment(employer_idtax_yearperiod_ending, opts)

Update HmrcLiability

Updates the editable fields of a HmrcLiability (ie, Adjustment, CISDeductionsSuffered, etc)

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

api_instance = SwaggerClient::HmrcPaymentApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
period_ending = DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | The final date of the month or quarter that the HmrcLiability is for.
opts = { 
  body: SwaggerClient::HmrcLiability.new # HmrcLiability | 
}

begin
  #Update HmrcLiability
  result = api_instance.update_hmrc_payment(employer_idtax_yearperiod_ending, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling HmrcPaymentApi->update_hmrc_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **period_ending** | **DateTime**| The final date of the month or quarter that the HmrcLiability is for. | 
 **body** | [**HmrcLiability**](HmrcLiability.md)|  | [optional] 

### Return type

[**HmrcLiability**](HmrcLiability.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



