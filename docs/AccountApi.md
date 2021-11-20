# SwaggerClient::AccountApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activate_account**](AccountApi.md#activate_account) | **POST** /account/activate | Activate an Account
[**change_email_address_account**](AccountApi.md#change_email_address_account) | **POST** /account/emailaddress | Change Email Address
[**create_api_key_account**](AccountApi.md#create_api_key_account) | **POST** /account/keys | Create ApiKey
[**create_demo_employer_account**](AccountApi.md#create_demo_employer_account) | **POST** /account/demo | Create Demo Employer
[**delete_api_key_account**](AccountApi.md#delete_api_key_account) | **DELETE** /account/keys/{id} | Delete ApiKey
[**get_account**](AccountApi.md#get_account) | **GET** /account | Get Account Details
[**get_api_key_account**](AccountApi.md#get_api_key_account) | **GET** /account/keys/{id} | Get ApiKey
[**get_employer_defaults_account**](AccountApi.md#get_employer_defaults_account) | **GET** /account/employerdefaults | Get EmployerDefaults
[**get_invitations_account**](AccountApi.md#get_invitations_account) | **GET** /account/invitations | Get Invitations
[**get_tenant_account**](AccountApi.md#get_tenant_account) | **GET** /account/Tenant | Get Tenant
[**list_api_keys_account**](AccountApi.md#list_api_keys_account) | **GET** /account/keys | List ApiKeys
[**profile_account**](AccountApi.md#profile_account) | **POST** /account/profile | Update Profile
[**set_employer_defaults_account**](AccountApi.md#set_employer_defaults_account) | **PUT** /account/employerdefaults | Set EmployerDefaults
[**update_cookie_preferences_account**](AccountApi.md#update_cookie_preferences_account) | **PUT** /account/cookiepreferences | Update Cookie Preferences
[**update_photo_account**](AccountApi.md#update_photo_account) | **POST** /account/photo | Update Photo
[**verify_account**](AccountApi.md#verify_account) | **POST** /account/verify | Re-send Verification Email
[**verify_response_account**](AccountApi.md#verify_response_account) | **PUT** /account/verify/respond | Verify Email Address

# **activate_account**
> User activate_account(opts)

Activate an Account

New accounts need to be activated to confirm Terms and Conditions have been accepted.\\n

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

api_instance = SwaggerClient::AccountApi.new
opts = { 
  body: SwaggerClient::User.new # User | 
  brand_code: 'brand_code_example' # String | 
}

begin
  #Activate an Account
  result = api_instance.activate_account(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountApi->activate_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**User**](User.md)|  | [optional] 
 **brand_code** | **String**|  | [optional] 

### Return type

[**User**](User.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **change_email_address_account**
> User change_email_address_account(opts)

Change Email Address

The user.PendingEmailAddress will be set to the give address and a  new verification email will be sent.\\n  Once the link in the email is clicked on then the user account will be updated to use the new email address

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

api_instance = SwaggerClient::AccountApi.new
opts = { 
  email_address: 'email_address_example' # String | 
}

begin
  #Change Email Address
  result = api_instance.change_email_address_account(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountApi->change_email_address_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_address** | **String**|  | [optional] 

### Return type

[**User**](User.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_api_key_account**
> Item create_api_key_account(opts)

Create ApiKey

Creates a new APIKey. The only property that's required or used is Name.\\n  A new ApiKey will be generated and returned to you.

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

api_instance = SwaggerClient::AccountApi.new
opts = { 
  body: SwaggerClient::Item.new # Item | 
}

begin
  #Create ApiKey
  result = api_instance.create_api_key_account(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountApi->create_api_key_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Item**](Item.md)|  | [optional] 

### Return type

[**Item**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **create_demo_employer_account**
> create_demo_employer_account

Create Demo Employer

Creates a demo employer for the user

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

api_instance = SwaggerClient::AccountApi.new

begin
  #Create Demo Employer
  api_instance.create_demo_employer_account
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountApi->create_demo_employer_account: #{e}"
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



# **delete_api_key_account**
> delete_api_key_account(id)

Delete ApiKey

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

api_instance = SwaggerClient::AccountApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Delete ApiKey
  api_instance.delete_api_key_account(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountApi->delete_api_key_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_account**
> User get_account(opts)

Get Account Details

Returns the details for the authorised account.\\n

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

api_instance = SwaggerClient::AccountApi.new
opts = { 
  defaults: 'defaults_example', # String | You can leave this empty, it's for internal use only.
  defaults_key: 'defaults_key_example' # String | You can leave this empty, it's for internal use only.
}

begin
  #Get Account Details
  result = api_instance.get_account(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountApi->get_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **defaults** | **String**| You can leave this empty, it&#x27;s for internal use only. | [optional] 
 **defaults_key** | **String**| You can leave this empty, it&#x27;s for internal use only. | [optional] 

### Return type

[**User**](User.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_api_key_account**
> Item get_api_key_account(id)

Get ApiKey

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

api_instance = SwaggerClient::AccountApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Get ApiKey
  result = api_instance.get_api_key_account(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountApi->get_api_key_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 

### Return type

[**Item**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_employer_defaults_account**
> EmployerDefaults get_employer_defaults_account

Get EmployerDefaults

Get the EmployerDefaults for the currently authorised User.

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

api_instance = SwaggerClient::AccountApi.new

begin
  #Get EmployerDefaults
  result = api_instance.get_employer_defaults_account
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountApi->get_employer_defaults_account: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EmployerDefaults**](EmployerDefaults.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_invitations_account**
> Array&lt;Item&gt; get_invitations_account

Get Invitations

Returns any pending Invitations for the authorised user.\\n  If the email address isn't yet verified then the Name displayed in the Item will be the users  email address instead of the company name.\\n  Invitations cannot be accepted until the email address for the user is verified.

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

api_instance = SwaggerClient::AccountApi.new

begin
  #Get Invitations
  result = api_instance.get_invitations_account
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountApi->get_invitations_account: #{e}"
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



# **get_tenant_account**
> Tenant get_tenant_account(opts)

Get Tenant

Returns branding details for the specified tenant. This is used by the web app and is unlikely to be used by third-parties.\\n

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

api_instance = SwaggerClient::AccountApi.new
opts = { 
  tenant_id: 'tenant_id_example', # String | 
  key: 'key_example' # String | 
}

begin
  #Get Tenant
  result = api_instance.get_tenant_account(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountApi->get_tenant_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenant_id** | **String**|  | [optional] 
 **key** | **String**|  | [optional] 

### Return type

[**Tenant**](Tenant.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_api_keys_account**
> Array&lt;Item&gt; list_api_keys_account

List ApiKeys

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

api_instance = SwaggerClient::AccountApi.new

begin
  #List ApiKeys
  result = api_instance.list_api_keys_account
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountApi->list_api_keys_account: #{e}"
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



# **profile_account**
> User profile_account(opts)

Update Profile

Updates your profile. Only FirstName and LastName fields are updated.

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

api_instance = SwaggerClient::AccountApi.new
opts = { 
  body: SwaggerClient::User.new # User | 
}

begin
  #Update Profile
  result = api_instance.profile_account(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountApi->profile_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**User**](User.md)|  | [optional] 

### Return type

[**User**](User.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **set_employer_defaults_account**
> EmployerDefaults set_employer_defaults_account(opts)

Set EmployerDefaults

Set the EmployerDefaults for the currently authorised User.

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

api_instance = SwaggerClient::AccountApi.new
opts = { 
  body: SwaggerClient::EmployerDefaults.new # EmployerDefaults | 
}

begin
  #Set EmployerDefaults
  result = api_instance.set_employer_defaults_account(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountApi->set_employer_defaults_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EmployerDefaults**](EmployerDefaults.md)|  | [optional] 

### Return type

[**EmployerDefaults**](EmployerDefaults.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **update_cookie_preferences_account**
> CookiePreference update_cookie_preferences_account(opts)

Update Cookie Preferences

Updates cookie preferences for your account.

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

api_instance = SwaggerClient::AccountApi.new
opts = { 
  body: SwaggerClient::CookiePreference.new # CookiePreference | 
}

begin
  #Update Cookie Preferences
  result = api_instance.update_cookie_preferences_account(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountApi->update_cookie_preferences_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CookiePreference**](CookiePreference.md)|  | [optional] 

### Return type

[**CookiePreference**](CookiePreference.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **update_photo_account**
> User update_photo_account(opts)

Update Photo

Submit an image here and we'll upload it, resize it to 200px squared and set it as the image for your account.

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

api_instance = SwaggerClient::AccountApi.new
opts = { 
  file: 'file_example' # String | 
}

begin
  #Update Photo
  result = api_instance.update_photo_account(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountApi->update_photo_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **String**|  | [optional] 

### Return type

[**User**](User.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **verify_account**
> verify_account

Re-send Verification Email

Users should receive an email to verify their email address when they first register or if they change their email address.\\n  However, this API endpoint can be used to re-send the email.

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

api_instance = SwaggerClient::AccountApi.new

begin
  #Re-send Verification Email
  api_instance.verify_account
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountApi->verify_account: #{e}"
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



# **verify_response_account**
> BOOLEAN verify_response_account(opts)

Verify Email Address

Used to process the link sent in an email to verify an email address.\\n

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

api_instance = SwaggerClient::AccountApi.new
opts = { 
  u: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | The value from the link in the email.
  k: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The value from the link in the email.
}

begin
  #Verify Email Address
  result = api_instance.verify_response_account(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountApi->verify_response_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **u** | [**String**](.md)| The value from the link in the email. | [optional] 
 **k** | [**String**](.md)| The value from the link in the email. | [optional] 

### Return type

**BOOLEAN**

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



