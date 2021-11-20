# SwaggerClient::EmailApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_email_email**](EmailApi.md#get_email_email) | **GET** /employers/{employerId}/email/{emailId} | Get Email
[**get_mail_settings_email**](EmailApi.md#get_mail_settings_email) | **GET** /employers/{employerId}/email/settings | Get MailSettings
[**index_email**](EmailApi.md#index_email) | **GET** /employers/{employerId}/email | List Emails
[**resend_email_email**](EmailApi.md#resend_email_email) | **POST** /employers/{employerId}/email/{emailId} | Re-send Email
[**test_mail_settings_email**](EmailApi.md#test_mail_settings_email) | **POST** /employers/{employerId}/email/settings/test | Send Test Email
[**update_mail_settings_email**](EmailApi.md#update_mail_settings_email) | **PUT** /employers/{employerId}/email/settings | Update MailSettings
[**verify_mail_settings_email**](EmailApi.md#verify_mail_settings_email) | **POST** /employers/{employerId}/email/settings/verify | Email Verification (Request)
[**verify_mail_settings_response_email**](EmailApi.md#verify_mail_settings_response_email) | **PUT** /employers/{employerId}/email/settings/verify | Email Verification (Respond)

# **get_email_email**
> EmployerEmail get_email_email(employer_id, email_id)

Get Email

Returns the email along with its status.

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

api_instance = SwaggerClient::EmailApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
email_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Get Email
  result = api_instance.get_email_email(employer_id, email_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmailApi->get_email_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **email_id** | [**String**](.md)|  | 

### Return type

[**EmployerEmail**](EmployerEmail.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_mail_settings_email**
> MailSettings get_mail_settings_email(employer_id)

Get MailSettings

Returns the MailSettings for an Employer.

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

api_instance = SwaggerClient::EmailApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer


begin
  #Get MailSettings
  result = api_instance.get_mail_settings_email(employer_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmailApi->get_mail_settings_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer | 

### Return type

[**MailSettings**](MailSettings.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **index_email**
> Array&lt;Item&gt; index_email(employer_id, opts)

List Emails

Returns a list of all emails sent for this Employer.

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

api_instance = SwaggerClient::EmailApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  page_num: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  #List Emails
  result = api_instance.index_email(employer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmailApi->index_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **page_num** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **resend_email_email**
> EmployerEmail resend_email_email(employer_id, email_id)

Re-send Email

Re-send an existing email.\\n

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

api_instance = SwaggerClient::EmailApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
email_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Re-send Email
  result = api_instance.resend_email_email(employer_id, email_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmailApi->resend_email_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **email_id** | [**String**](.md)|  | 

### Return type

[**EmployerEmail**](EmployerEmail.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **test_mail_settings_email**
> EmployerEmail test_mail_settings_email(employer_id, opts)

Send Test Email

This API call will generate a test email based on your MailSettings.

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

api_instance = SwaggerClient::EmailApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer
opts = { 
  email: 'email_example' # String | The address to send a test email to
}

begin
  #Send Test Email
  result = api_instance.test_mail_settings_email(employer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmailApi->test_mail_settings_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer | 
 **email** | **String**| The address to send a test email to | [optional] 

### Return type

[**EmployerEmail**](EmployerEmail.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_mail_settings_email**
> MailSettings update_mail_settings_email(employer_id, opts)

Update MailSettings

Updates the MailSettings for an Employer.

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

api_instance = SwaggerClient::EmailApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer
opts = { 
  body: SwaggerClient::MailSettings.new # MailSettings | 
}

begin
  #Update MailSettings
  result = api_instance.update_mail_settings_email(employer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmailApi->update_mail_settings_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer | 
 **body** | [**MailSettings**](MailSettings.md)|  | [optional] 

### Return type

[**MailSettings**](MailSettings.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **verify_mail_settings_email**
> verify_mail_settings_email(employer_id)

Email Verification (Request)

If the user attempts to use a non-verified email address in their MailSettings then we'll send them a verification email.  This API endpoint can be used to re-send the email.

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

api_instance = SwaggerClient::EmailApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer


begin
  #Email Verification (Request)
  api_instance.verify_mail_settings_email(employer_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmailApi->verify_mail_settings_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **verify_mail_settings_response_email**
> BOOLEAN verify_mail_settings_response_email(employer_id, opts)

Email Verification (Respond)

Used to process the link sent in an email to verify an email address that's being used in MailSettings.\\n

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

api_instance = SwaggerClient::EmailApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The employer Id.
opts = { 
  u: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | The value from the link in the email.
  k: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The value from the link in the email.
}

begin
  #Email Verification (Respond)
  result = api_instance.verify_mail_settings_response_email(employer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmailApi->verify_mail_settings_response_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The employer Id. | 
 **u** | [**String**](.md)| The value from the link in the email. | [optional] 
 **k** | [**String**](.md)| The value from the link in the email. | [optional] 

### Return type

**BOOLEAN**

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



