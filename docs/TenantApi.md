# SwaggerClient::TenantApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_admin_user_tenant**](TenantApi.md#add_admin_user_tenant) | **POST** /tenants/{id}/users/admins | Add Admin User
[**admin_users_tenant**](TenantApi.md#admin_users_tenant) | **GET** /tenants/{id}/users/admins | List Admin Users
[**bill_tenant**](TenantApi.md#bill_tenant) | **GET** /tenants/{id}/bills/{year}/{month}/{billId} | Get Bill
[**bills_tenant**](TenantApi.md#bills_tenant) | **GET** /tenants/{id}/bills/{year}/{month} | Get Bills
[**create_bills_tenant**](TenantApi.md#create_bills_tenant) | **POST** /tenants/bills | Create Bills for Period
[**create_tenant**](TenantApi.md#create_tenant) | **POST** /tenants | Create a Tenant
[**disabled_tenant**](TenantApi.md#disabled_tenant) | **PUT** /tenants/{id}/users/{userId}/disabled | Disable User Account
[**employer_creation_tenant**](TenantApi.md#employer_creation_tenant) | **PUT** /tenants/{id}/users/{userId}/employercreation | Enable Employer Creation
[**employer_usage_tenant**](TenantApi.md#employer_usage_tenant) | **GET** /tenants/{id}/employers/{employerId}/usage | Get Employer Usage
[**employer_users_tenant**](TenantApi.md#employer_users_tenant) | **GET** /tenants/{id}/employers/{employerId}/users | Get Employer Users
[**get_tenant**](TenantApi.md#get_tenant) | **GET** /tenants/{id} | Get a Tenant
[**get_users_with_no_billable_activity_tenant**](TenantApi.md#get_users_with_no_billable_activity_tenant) | **GET** /tenants/{id}/reports/users/nobillableactivity | Get Users with no Billable Activity.
[**remove_admin_user_tenant**](TenantApi.md#remove_admin_user_tenant) | **DELETE** /tenants/{id}/users/admins | Remove Admin User
[**set_accounting_id_tenant**](TenantApi.md#set_accounting_id_tenant) | **PUT** /tenants/{id}/users/{userId}/accounting | Set User Accounting Id
[**set_bureau_redirect_email_address_tenant**](TenantApi.md#set_bureau_redirect_email_address_tenant) | **PUT** /tenants/{id}/users/{userId}/bureauredir | Set Bureau Redirect
[**set_tenant_tenant**](TenantApi.md#set_tenant_tenant) | **PUT** /tenants/{id}/users/{userId}/tenant | Set User Tenant
[**update_bill_tenant**](TenantApi.md#update_bill_tenant) | **PUT** /tenants/{id}/bills/{year}/{month}/{billId} | Update Bill
[**update_css_colors_tenant**](TenantApi.md#update_css_colors_tenant) | **PUT** /tenants/{id}/css/colors | Update CSS Colors
[**update_css_tenant**](TenantApi.md#update_css_tenant) | **PUT** /tenants/{id}/css | Update CSS
[**update_fav_icon_tenant**](TenantApi.md#update_fav_icon_tenant) | **PUT** /tenants/{id}/favicon | Upload Favicon
[**update_logo_tenant**](TenantApi.md#update_logo_tenant) | **PUT** /tenants/{id}/logo | Upload Logo
[**update_tenant**](TenantApi.md#update_tenant) | **PUT** /tenants/{id} | Update a Tenant
[**usage_tenant**](TenantApi.md#usage_tenant) | **GET** /tenants/{id}/usage/{year}/{month} | Get Usage
[**user_bills_tenant**](TenantApi.md#user_bills_tenant) | **GET** /tenants/{id}/users/{userId}/bills | Get User Bills
[**user_employers_tenant**](TenantApi.md#user_employers_tenant) | **GET** /tenants/{id}/users/{userId}/employers | Get User Employers
[**user_tenant**](TenantApi.md#user_tenant) | **GET** /tenants/{id}/users/{userId} | Get a User
[**users_search_tenant**](TenantApi.md#users_search_tenant) | **GET** /tenants/{id}/users/search | Search Users
[**users_tenant**](TenantApi.md#users_tenant) | **GET** /tenants/{id}/users | List Users
[**weekly_activity_tenant**](TenantApi.md#weekly_activity_tenant) | **GET** /tenants/{id}/reports/weeklyactivity | Weekly Activity Report

# **add_admin_user_tenant**
> add_admin_user_tenant(id, opts)

Add Admin User

Adds the specified user as an admin for the Tenant

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

api_instance = SwaggerClient::TenantApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Tenant you want to remove the  admin User from.
opts = { 
  body: 'body_example' # String | 
}

begin
  #Add Admin User
  api_instance.add_admin_user_tenant(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantApi->add_admin_user_tenant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Tenant you want to remove the  admin User from. | 
 **body** | [**String**](String.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined



# **admin_users_tenant**
> Array&lt;Item&gt; admin_users_tenant(id)

List Admin Users

Returns a list of admin users for the Tenant

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

api_instance = SwaggerClient::TenantApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Tenant you want to list admin Users for.


begin
  #List Admin Users
  result = api_instance.admin_users_tenant(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantApi->admin_users_tenant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Tenant you want to list admin Users for. | 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **bill_tenant**
> UsageBill bill_tenant(id, year, month, bill_id)

Get Bill

Returns details of a UsageBill for a User of this Tenant

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

api_instance = SwaggerClient::TenantApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Tenant the bill belongs to.
year = 56 # Integer | 
month = 56 # Integer | 
bill_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the UsageBill.


begin
  #Get Bill
  result = api_instance.bill_tenant(id, year, month, bill_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantApi->bill_tenant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Tenant the bill belongs to. | 
 **year** | **Integer**|  | 
 **month** | **Integer**|  | 
 **bill_id** | [**String**](.md)| The Id of the UsageBill. | 

### Return type

[**UsageBill**](UsageBill.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **bills_tenant**
> Array&lt;Item&gt; bills_tenant(id, year, month)

Get Bills

Returns a list of UsageBill for Users of this Tenant, for the Year and Month supplied

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

api_instance = SwaggerClient::TenantApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Tenant you want to list bills for.
year = 56 # Integer | 
month = 56 # Integer | 


begin
  #Get Bills
  result = api_instance.bills_tenant(id, year, month)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantApi->bills_tenant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Tenant you want to list bills for. | 
 **year** | **Integer**|  | 
 **month** | **Integer**|  | 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_bills_tenant**
> Array&lt;Item&gt; create_bills_tenant(opts)

Create Bills for Period

Generates usage and creates bills for all Tenants\\n  Only available to SuperAdmins

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

api_instance = SwaggerClient::TenantApi.new
opts = { 
  month: 56, # Integer | 
  year: 56 # Integer | 
}

begin
  #Create Bills for Period
  result = api_instance.create_bills_tenant(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantApi->create_bills_tenant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **month** | **Integer**|  | [optional] 
 **year** | **Integer**|  | [optional] 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_tenant**
> Tenant create_tenant(opts)

Create a Tenant

Use this method to create a new Tenant\\n  Only available to SuperAdmins

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

api_instance = SwaggerClient::TenantApi.new
opts = { 
  body: SwaggerClient::Tenant.new # Tenant | 
}

begin
  #Create a Tenant
  result = api_instance.create_tenant(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantApi->create_tenant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Tenant**](Tenant.md)|  | [optional] 

### Return type

[**Tenant**](Tenant.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **disabled_tenant**
> disabled_tenant(iduser_id, opts)

Disable User Account

Disables (or re-enabled) a user account

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

api_instance = SwaggerClient::TenantApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Tenant.
user_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  body: 'body_example' # String | A message to show the user explaining why the account is disabled.
  disabled: true # BOOLEAN | Whether or not the account should be disabled.
}

begin
  #Disable User Account
  api_instance.disabled_tenant(iduser_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantApi->disabled_tenant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Tenant. | 
 **user_id** | [**String**](.md)|  | 
 **body** | [**String**](String.md)| A message to show the user explaining why the account is disabled. | [optional] 
 **disabled** | **BOOLEAN**| Whether or not the account should be disabled. | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined



# **employer_creation_tenant**
> employer_creation_tenant(id, user_id, opts)

Enable Employer Creation

Enable (or disable) a user accounts ability to create new employers

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

api_instance = SwaggerClient::TenantApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Tenant.
user_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  enabled: true # BOOLEAN | Whether or not the account can create employers.
}

begin
  #Enable Employer Creation
  api_instance.employer_creation_tenant(id, user_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantApi->employer_creation_tenant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Tenant. | 
 **user_id** | [**String**](.md)|  | 
 **enabled** | **BOOLEAN**| Whether or not the account can create employers. | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **employer_usage_tenant**
> Array&lt;Item&gt; employer_usage_tenant(id, employer_id)

Get Employer Usage

Returns all activity for the given Employer

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

api_instance = SwaggerClient::TenantApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Tenant.
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer.


begin
  #Get Employer Usage
  result = api_instance.employer_usage_tenant(id, employer_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantApi->employer_usage_tenant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Tenant. | 
 **employer_id** | [**String**](.md)| The Id of the Employer. | 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **employer_users_tenant**
> Array&lt;Item&gt; employer_users_tenant(id, employer_id)

Get Employer Users

Returns all users for the given Employer

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

api_instance = SwaggerClient::TenantApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Tenant.
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer.


begin
  #Get Employer Users
  result = api_instance.employer_users_tenant(id, employer_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantApi->employer_users_tenant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Tenant. | 
 **employer_id** | [**String**](.md)| The Id of the Employer. | 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_tenant**
> Tenant get_tenant(id)

Get a Tenant

If you are an administrator for a Tenant then you can retrieve the settings for it using this API call

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

api_instance = SwaggerClient::TenantApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Tenant you want to retrieve.


begin
  #Get a Tenant
  result = api_instance.get_tenant(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantApi->get_tenant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Tenant you want to retrieve. | 

### Return type

[**Tenant**](Tenant.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_users_with_no_billable_activity_tenant**
> ReportResponse get_users_with_no_billable_activity_tenant(id, opts)

Get Users with no Billable Activity.

Returns a .csv file containing users created in or before the given month that do not have billable activity.

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

api_instance = SwaggerClient::TenantApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Tenant
opts = { 
  month: 56, # Integer | 
  year: 56 # Integer | 
}

begin
  #Get Users with no Billable Activity.
  result = api_instance.get_users_with_no_billable_activity_tenant(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantApi->get_users_with_no_billable_activity_tenant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Tenant | 
 **month** | **Integer**|  | [optional] 
 **year** | **Integer**|  | [optional] 

### Return type

[**ReportResponse**](ReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv



# **remove_admin_user_tenant**
> remove_admin_user_tenant(id, opts)

Remove Admin User

Removes the specified admin user for the Tenant

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

api_instance = SwaggerClient::TenantApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Tenant you want to remove the  admin User from.
opts = { 
  body: 'body_example' # String | 
}

begin
  #Remove Admin User
  api_instance.remove_admin_user_tenant(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantApi->remove_admin_user_tenant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Tenant you want to remove the  admin User from. | 
 **body** | [**String**](String.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined



# **set_accounting_id_tenant**
> set_accounting_id_tenant(id, user_id, opts)

Set User Accounting Id

Updates the Customer Accounting Id for a user

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

api_instance = SwaggerClient::TenantApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Tenant.
user_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  accounting_id: 'accounting_id_example' # String | The CustomerAccountingId for the user.
}

begin
  #Set User Accounting Id
  api_instance.set_accounting_id_tenant(id, user_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantApi->set_accounting_id_tenant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Tenant. | 
 **user_id** | [**String**](.md)|  | 
 **accounting_id** | **String**| The CustomerAccountingId for the user. | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **set_bureau_redirect_email_address_tenant**
> set_bureau_redirect_email_address_tenant(id, user_id, opts)

Set Bureau Redirect

Sets or removes the redirect email address for a users Bureau-related notifications

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

api_instance = SwaggerClient::TenantApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Tenant.
user_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  email_address: 'email_address_example' # String | The email address to redirect to, or an empty string to remove the redirect.
}

begin
  #Set Bureau Redirect
  api_instance.set_bureau_redirect_email_address_tenant(id, user_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantApi->set_bureau_redirect_email_address_tenant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Tenant. | 
 **user_id** | [**String**](.md)|  | 
 **email_address** | **String**| The email address to redirect to, or an empty string to remove the redirect. | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **set_tenant_tenant**
> set_tenant_tenant(id, user_id, opts)

Set User Tenant

Changes the Tenant for a User. Only applicable if you manage two or more Tenants

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

api_instance = SwaggerClient::TenantApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Tenant the user is currently assigned to.
user_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  new_tenant_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Tenant the user is to be assigned to.
}

begin
  #Set User Tenant
  api_instance.set_tenant_tenant(id, user_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantApi->set_tenant_tenant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Tenant the user is currently assigned to. | 
 **user_id** | [**String**](.md)|  | 
 **new_tenant_id** | [**String**](.md)| The Id of the Tenant the user is to be assigned to. | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **update_bill_tenant**
> UsageBill update_bill_tenant(idyearmonthbill_id, opts)

Update Bill

Updates the UsageBill.

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

api_instance = SwaggerClient::TenantApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Tenant the bill belongs to.
year = 56 # Integer | 
month = 56 # Integer | 
bill_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the UsageBill.
opts = { 
  body: SwaggerClient::UsageBill.new # UsageBill | 
}

begin
  #Update Bill
  result = api_instance.update_bill_tenant(idyearmonthbill_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantApi->update_bill_tenant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Tenant the bill belongs to. | 
 **year** | **Integer**|  | 
 **month** | **Integer**|  | 
 **bill_id** | [**String**](.md)| The Id of the UsageBill. | 
 **body** | [**UsageBill**](UsageBill.md)|  | [optional] 

### Return type

[**UsageBill**](UsageBill.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **update_css_colors_tenant**
> Array&lt;StringStringKeyValuePair&gt; update_css_colors_tenant(id, opts)

Update CSS Colors

Update the colors for a Tenant

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

api_instance = SwaggerClient::TenantApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Tenant you want to update.
opts = { 
  body: [SwaggerClient::StringStringKeyValuePair.new] # Array<StringStringKeyValuePair> | 
}

begin
  #Update CSS Colors
  result = api_instance.update_css_colors_tenant(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantApi->update_css_colors_tenant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Tenant you want to update. | 
 **body** | [**Array&lt;StringStringKeyValuePair&gt;**](StringStringKeyValuePair.md)|  | [optional] 

### Return type

[**Array&lt;StringStringKeyValuePair&gt;**](StringStringKeyValuePair.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **update_css_tenant**
> String update_css_tenant(id, opts)

Update CSS

Update the custom CSS for a Tenant

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

api_instance = SwaggerClient::TenantApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Tenant you want to update.
opts = { 
  body: 'body_example' # String | 
}

begin
  #Update CSS
  result = api_instance.update_css_tenant(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantApi->update_css_tenant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Tenant you want to update. | 
 **body** | [**String**](String.md)|  | [optional] 

### Return type

**String**

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **update_fav_icon_tenant**
> Tenant update_fav_icon_tenant(id, opts)

Upload Favicon

Upload an image to use as favicon. We'll upload it and set the URL on the FavIcon property of the Tenant.

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

api_instance = SwaggerClient::TenantApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Tenant you want to update.
opts = { 
  file: 'file_example' # String | 
}

begin
  #Upload Favicon
  result = api_instance.update_fav_icon_tenant(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantApi->update_fav_icon_tenant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Tenant you want to update. | 
 **file** | **String**|  | [optional] 

### Return type

[**Tenant**](Tenant.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **update_logo_tenant**
> Tenant update_logo_tenant(id, opts)

Upload Logo

Upload an image to use as your main logo. We'll upload it and set the URL on the HomeImgUrl property of the Tenant.

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

api_instance = SwaggerClient::TenantApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Tenant you want to update.
opts = { 
  file: 'file_example' # String | 
}

begin
  #Upload Logo
  result = api_instance.update_logo_tenant(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantApi->update_logo_tenant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Tenant you want to update. | 
 **file** | **String**|  | [optional] 

### Return type

[**Tenant**](Tenant.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **update_tenant**
> Tenant update_tenant(id, opts)

Update a Tenant

If you are an administrator for a Tenant then you can update the settings for it using this API call

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

api_instance = SwaggerClient::TenantApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Tenant you want to update.
opts = { 
  body: SwaggerClient::Tenant.new # Tenant | 
}

begin
  #Update a Tenant
  result = api_instance.update_tenant(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantApi->update_tenant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Tenant you want to update. | 
 **body** | [**Tenant**](Tenant.md)|  | [optional] 

### Return type

[**Tenant**](Tenant.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **usage_tenant**
> Array&lt;Item&gt; usage_tenant(id, year, month)

Get Usage

Returns activity for Users of this Tenant, for the Year and Month supplied

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

api_instance = SwaggerClient::TenantApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Tenant.
year = 56 # Integer | 
month = 56 # Integer | 


begin
  #Get Usage
  result = api_instance.usage_tenant(id, year, month)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantApi->usage_tenant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Tenant. | 
 **year** | **Integer**|  | 
 **month** | **Integer**|  | 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **user_bills_tenant**
> Array&lt;Item&gt; user_bills_tenant(id, user_id)

Get User Bills

Returns all UsageBills for a User

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

api_instance = SwaggerClient::TenantApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Tenant you want to get a Users UsageBills for.
user_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Get User Bills
  result = api_instance.user_bills_tenant(id, user_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantApi->user_bills_tenant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Tenant you want to get a Users UsageBills for. | 
 **user_id** | [**String**](.md)|  | 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **user_employers_tenant**
> Array&lt;Item&gt; user_employers_tenant(id, user_id)

Get User Employers

Returns Employer details for a User that belongs to the Tenant

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

api_instance = SwaggerClient::TenantApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Tenant you want to get User Employers for.
user_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Get User Employers
  result = api_instance.user_employers_tenant(id, user_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantApi->user_employers_tenant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Tenant you want to get User Employers for. | 
 **user_id** | [**String**](.md)|  | 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **user_tenant**
> User user_tenant(id, user_id)

Get a User

Returns details of a User that belongs to the Tenant

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

api_instance = SwaggerClient::TenantApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Tenant you want to get a User for.
user_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Get a User
  result = api_instance.user_tenant(id, user_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantApi->user_tenant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Tenant you want to get a User for. | 
 **user_id** | [**String**](.md)|  | 

### Return type

[**User**](User.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **users_search_tenant**
> Array&lt;Item&gt; users_search_tenant(id, opts)

Search Users

Returns a list of users for the Tenant that match the search

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

api_instance = SwaggerClient::TenantApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Tenant you want to search Users for.
opts = { 
  q: 'q_example' # String | 
}

begin
  #Search Users
  result = api_instance.users_search_tenant(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantApi->users_search_tenant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Tenant you want to search Users for. | 
 **q** | **String**|  | [optional] 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **users_tenant**
> Array&lt;Item&gt; users_tenant(id, opts)

List Users

Returns a list of users for the Tenant

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

api_instance = SwaggerClient::TenantApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Tenant you want to list Users for.
opts = { 
  page_num: 56, # Integer | 
  page_size: 56, # Integer | 
  sort_by_last_login: false # BOOLEAN | 
}

begin
  #List Users
  result = api_instance.users_tenant(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantApi->users_tenant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Tenant you want to list Users for. | 
 **page_num** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 
 **sort_by_last_login** | **BOOLEAN**|  | [optional] [default to false]

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **weekly_activity_tenant**
> ReportResponse weekly_activity_tenant(id, opts)

Weekly Activity Report

Returns a report detailing User activity, summarised by week, for the given date range

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

api_instance = SwaggerClient::TenantApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Tenant
opts = { 
  from_date: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 
  to_date: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 
  accept: 'accept_example' # String | 
}

begin
  #Weekly Activity Report
  result = api_instance.weekly_activity_tenant(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantApi->weekly_activity_tenant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Tenant | 
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



