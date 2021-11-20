# SwaggerClient::TenantEmailApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_email_tenant_email**](TenantEmailApi.md#get_email_tenant_email) | **GET** /tenants/{id}/email/{emailId} | Get Email
[**get_mail_settings_tenant_email**](TenantEmailApi.md#get_mail_settings_tenant_email) | **GET** /tenants/{id}/email/settings | Get MailSettings
[**index_tenant_email**](TenantEmailApi.md#index_tenant_email) | **GET** /tenants/{id}/email | List Emails
[**resend_email_tenant_email**](TenantEmailApi.md#resend_email_tenant_email) | **POST** /tenants/{id}/email/{emailId} | Re-send Email
[**test_mail_settings_tenant_email**](TenantEmailApi.md#test_mail_settings_tenant_email) | **POST** /tenants/{id}/email/settings/test | Send test email
[**update_mail_settings_tenant_email**](TenantEmailApi.md#update_mail_settings_tenant_email) | **PUT** /tenants/{id}/email/settings | Update MailSettings

# **get_email_tenant_email**
> TenantEmail get_email_tenant_email(id, email_id)

Get Email

Returns the email along with its status.\\n

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

api_instance = SwaggerClient::TenantEmailApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
email_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Get Email
  result = api_instance.get_email_tenant_email(id, email_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantEmailApi->get_email_tenant_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **email_id** | [**String**](.md)|  | 

### Return type

[**TenantEmail**](TenantEmail.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_mail_settings_tenant_email**
> MailSettings get_mail_settings_tenant_email(id)

Get MailSettings

Returns the MailSettings for a Tenant.

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

api_instance = SwaggerClient::TenantEmailApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Tenant


begin
  #Get MailSettings
  result = api_instance.get_mail_settings_tenant_email(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantEmailApi->get_mail_settings_tenant_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Tenant | 

### Return type

[**MailSettings**](MailSettings.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **index_tenant_email**
> Array&lt;Item&gt; index_tenant_email(id, opts)

List Emails

Returns a list of all emails sent for this Tenant.

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

api_instance = SwaggerClient::TenantEmailApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  page_num: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  #List Emails
  result = api_instance.index_tenant_email(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantEmailApi->index_tenant_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **page_num** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **resend_email_tenant_email**
> TenantEmail resend_email_tenant_email(id, email_id)

Re-send Email

Re-sends an existing email.\\n

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

api_instance = SwaggerClient::TenantEmailApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
email_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Re-send Email
  result = api_instance.resend_email_tenant_email(id, email_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantEmailApi->resend_email_tenant_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **email_id** | [**String**](.md)|  | 

### Return type

[**TenantEmail**](TenantEmail.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **test_mail_settings_tenant_email**
> EmployerEmail test_mail_settings_tenant_email(id, opts)

Send test email

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

api_instance = SwaggerClient::TenantEmailApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Tenant
opts = { 
  email: 'email_example' # String | The address to send a test email to
}

begin
  #Send test email
  result = api_instance.test_mail_settings_tenant_email(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantEmailApi->test_mail_settings_tenant_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Tenant | 
 **email** | **String**| The address to send a test email to | [optional] 

### Return type

[**EmployerEmail**](EmployerEmail.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_mail_settings_tenant_email**
> MailSettings update_mail_settings_tenant_email(id, opts)

Update MailSettings

Updates the MailSettings for a Tenant.

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

api_instance = SwaggerClient::TenantEmailApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Tenant
opts = { 
  body: SwaggerClient::MailSettings.new # MailSettings | 
}

begin
  #Update MailSettings
  result = api_instance.update_mail_settings_tenant_email(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantEmailApi->update_mail_settings_tenant_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Tenant | 
 **body** | [**MailSettings**](MailSettings.md)|  | [optional] 

### Return type

[**MailSettings**](MailSettings.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



