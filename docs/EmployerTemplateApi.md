# SwaggerClient::EmployerTemplateApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_employer_template**](EmployerTemplateApi.md#get_employer_template) | **GET** /employers/{employerId}/templates/{type} | Get EmployerTemplate
[**index_employer_template**](EmployerTemplateApi.md#index_employer_template) | **GET** /employers/{employerId}/templates | List EmployerTemplates
[**update_employer_template**](EmployerTemplateApi.md#update_employer_template) | **PUT** /employers/{employerId}/templates/{type} | Update EmployerTemplate

# **get_employer_template**
> EmployerTemplate get_employer_template(employer_id, type)

Get EmployerTemplate

Gets the EmployerTemplate specified by the Type.

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

api_instance = SwaggerClient::EmployerTemplateApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the EmployerTemplate belongs.
type = SwaggerClient::EmployerTemplateType.new # EmployerTemplateType | The EmployerTemplateType you want to retrieve.


begin
  #Get EmployerTemplate
  result = api_instance.get_employer_template(employer_id, type)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployerTemplateApi->get_employer_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the EmployerTemplate belongs. | 
 **type** | [**EmployerTemplateType**](.md)| The EmployerTemplateType you want to retrieve. | 

### Return type

[**EmployerTemplate**](EmployerTemplate.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **index_employer_template**
> Array&lt;Item&gt; index_employer_template(employer_id)

List EmployerTemplates

Lists all EmployerTemplates for the Employer specified.

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

api_instance = SwaggerClient::EmployerTemplateApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer for which you want to list Pay Codes


begin
  #List EmployerTemplates
  result = api_instance.index_employer_template(employer_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployerTemplateApi->index_employer_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer for which you want to list Pay Codes | 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_employer_template**
> EmployerTemplate update_employer_template(employer_idtype, opts)

Update EmployerTemplate

Updates the EmployerTemplate specified by the Type.\\nThe only values need to supply are <code>Content</code>  and (if applicable) <code>Subject</code>.\\n  If these values are empty strings or not provided then the template will revert to the default values.

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

api_instance = SwaggerClient::EmployerTemplateApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the EmployerTemplate belongs.
type = SwaggerClient::EmployerTemplateType.new # EmployerTemplateType | 
opts = { 
  body: SwaggerClient::EmployerTemplate.new # EmployerTemplate | The EmployerTemplateType you want to retrieve.
}

begin
  #Update EmployerTemplate
  result = api_instance.update_employer_template(employer_idtype, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployerTemplateApi->update_employer_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the EmployerTemplate belongs. | 
 **type** | [**EmployerTemplateType**](.md)|  | 
 **body** | [**EmployerTemplate**](EmployerTemplate.md)| The EmployerTemplateType you want to retrieve. | [optional] 

### Return type

[**EmployerTemplate**](EmployerTemplate.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



