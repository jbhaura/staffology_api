# SwaggerClient::PayCodeApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_pay_code**](PayCodeApi.md#create_pay_code) | **POST** /employers/{employerId}/paycodes | Create PayCode
[**delete_pay_code**](PayCodeApi.md#delete_pay_code) | **DELETE** /employers/{employerId}/paycodes/{code} | Delete PayCode
[**get_pay_code**](PayCodeApi.md#get_pay_code) | **GET** /employers/{employerId}/paycodes/{code} | Get PayCode
[**index_pay_code**](PayCodeApi.md#index_pay_code) | **GET** /employers/{employerId}/paycodes | List PayCodes
[**nominal_code_mappings_pay_code**](PayCodeApi.md#nominal_code_mappings_pay_code) | **GET** /employers/{employerId}/paycodes/nominalcodes | Get Nominal Code Mappings
[**update_nominal_code_mappings_pay_code**](PayCodeApi.md#update_nominal_code_mappings_pay_code) | **PUT** /employers/{employerId}/paycodes/nominalcodes | Updates Nominal Code Mappings
[**update_pay_code**](PayCodeApi.md#update_pay_code) | **PUT** /employers/{employerId}/paycodes/{code} | Update PayCode

# **create_pay_code**
> PayCode create_pay_code(employer_id, opts)

Create PayCode

Creates a new PayCode for the Employer.

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

api_instance = SwaggerClient::PayCodeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  body: SwaggerClient::PayCode.new # PayCode | 
}

begin
  #Create PayCode
  result = api_instance.create_pay_code(employer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayCodeApi->create_pay_code: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **body** | [**PayCode**](PayCode.md)|  | [optional] 

### Return type

[**PayCode**](PayCode.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **delete_pay_code**
> delete_pay_code(employer_id, code)

Delete PayCode

Deletes the specified PayCode.

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

api_instance = SwaggerClient::PayCodeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
code = 'code_example' # String | 


begin
  #Delete PayCode
  api_instance.delete_pay_code(employer_id, code)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayCodeApi->delete_pay_code: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **code** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_pay_code**
> PayCode get_pay_code(employer_id, code)

Get PayCode

Gets the PayCode specified.

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

api_instance = SwaggerClient::PayCodeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the Pay Code belongs.
code = 'code_example' # String | The code of the Pay Code you want to retrieve.


begin
  #Get PayCode
  result = api_instance.get_pay_code(employer_id, code)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayCodeApi->get_pay_code: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the Pay Code belongs. | 
 **code** | **String**| The code of the Pay Code you want to retrieve. | 

### Return type

[**PayCode**](PayCode.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **index_pay_code**
> Array&lt;PayCode&gt; index_pay_code(employer_id, opts)

List PayCodes

Lists all PayCodes for the Employer specified.

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

api_instance = SwaggerClient::PayCodeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer for which you want to list Pay Codes
opts = { 
  verbose: false # BOOLEAN | If provided and set to true then full details of all Pay Codes will be returned insead of just a summary
}

begin
  #List PayCodes
  result = api_instance.index_pay_code(employer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayCodeApi->index_pay_code: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer for which you want to list Pay Codes | 
 **verbose** | **BOOLEAN**| If provided and set to true then full details of all Pay Codes will be returned insead of just a summary | [optional] [default to false]

### Return type

[**Array&lt;PayCode&gt;**](PayCode.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **nominal_code_mappings_pay_code**
> Array&lt;NominalCodeMapping&gt; nominal_code_mappings_pay_code(employer_id)

Get Nominal Code Mappings

Returns the list of mappings of PayCodes to NominalCodes

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

api_instance = SwaggerClient::PayCodeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer for which you want to get the mapping


begin
  #Get Nominal Code Mappings
  result = api_instance.nominal_code_mappings_pay_code(employer_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayCodeApi->nominal_code_mappings_pay_code: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer for which you want to get the mapping | 

### Return type

[**Array&lt;NominalCodeMapping&gt;**](NominalCodeMapping.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_nominal_code_mappings_pay_code**
> Array&lt;NominalCodeMapping&gt; update_nominal_code_mappings_pay_code(employer_id, opts)

Updates Nominal Code Mappings

Updates the list of mappings of PayCodes to NominalCodes

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

api_instance = SwaggerClient::PayCodeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  body: [SwaggerClient::NominalCodeMapping.new] # Array<NominalCodeMapping> | 
}

begin
  #Updates Nominal Code Mappings
  result = api_instance.update_nominal_code_mappings_pay_code(employer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayCodeApi->update_nominal_code_mappings_pay_code: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **body** | [**Array&lt;NominalCodeMapping&gt;**](NominalCodeMapping.md)|  | [optional] 

### Return type

[**Array&lt;NominalCodeMapping&gt;**](NominalCodeMapping.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **update_pay_code**
> PayCode update_pay_code(employer_idcode, opts)

Update PayCode

Updates the details of an existing PayCode.

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

api_instance = SwaggerClient::PayCodeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
code = 'code_example' # String | 
opts = { 
  body: SwaggerClient::PayCode.new # PayCode | 
}

begin
  #Update PayCode
  result = api_instance.update_pay_code(employer_idcode, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PayCodeApi->update_pay_code: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **code** | **String**|  | 
 **body** | [**PayCode**](PayCode.md)|  | [optional] 

### Return type

[**PayCode**](PayCode.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



