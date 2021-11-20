# SwaggerClient::EmployerApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apply_year_end_employer**](EmployerApi.md#apply_year_end_employer) | **PUT** /employers/{id}/YearEnd | Make Year End Changes
[**calendar_employer**](EmployerApi.md#calendar_employer) | **GET** /employers/{id}/calendar | Get Employer Calendar
[**create_employer**](EmployerApi.md#create_employer) | **POST** /employers | Create an Employer
[**custom_payslip_employer**](EmployerApi.md#custom_payslip_employer) | **GET** /employers/{id}/custompayslip | Get Payslip Customisations
[**delete_employer**](EmployerApi.md#delete_employer) | **DELETE** /employers/{id} | Delete an Employer
[**employer_direct_debit_mandate_required_employer**](EmployerApi.md#employer_direct_debit_mandate_required_employer) | **GET** /employers/{id}/employerdirectdebitrequired | Get DirectDebitMandate
[**get_automation_settings_employer**](EmployerApi.md#get_automation_settings_employer) | **GET** /employers/{id}/automation | Get Automation Settings
[**get_employer**](EmployerApi.md#get_employer) | **GET** /employers/{id} | Get an Employer
[**get_employer_opening_balances_employer**](EmployerApi.md#get_employer_opening_balances_employer) | **GET** /employers/{id}/openingbalances | Get EmployerOpeningBalances
[**get_group_memberships_employer**](EmployerApi.md#get_group_memberships_employer) | **GET** /employers/{id}/groups | Get Employer Groups
[**import_csv_employer**](EmployerApi.md#import_csv_employer) | **POST** /employers/import | Import CSV
[**index_employer**](EmployerApi.md#index_employer) | **GET** /employers | List Employers
[**list_users_employer**](EmployerApi.md#list_users_employer) | **GET** /employers/{id}/users | List Users
[**remove_user_employer**](EmployerApi.md#remove_user_employer) | **DELETE** /employers/{id}/users/{userId} | Remove User
[**review_year_end_employer**](EmployerApi.md#review_year_end_employer) | **GET** /employers/{id}/YearEnd | Review Year End Changes
[**rti_requiring_attention_employer**](EmployerApi.md#rti_requiring_attention_employer) | **GET** /employers/{id}/rti/requiringattention | RTI Documents Requiring Attention
[**search_employees_employer**](EmployerApi.md#search_employees_employer) | **GET** /employers/employees/search | Search Employees
[**search_employer**](EmployerApi.md#search_employer) | **GET** /employers/search | Search Employers
[**set_group_memberships_employer**](EmployerApi.md#set_group_memberships_employer) | **PUT** /employers/{id}/groups | Set Employer Groups
[**set_owner_employer**](EmployerApi.md#set_owner_employer) | **PUT** /employers/{id}/users/owner | Set Owner
[**suggest_pay_code_employer**](EmployerApi.md#suggest_pay_code_employer) | **GET** /employers/{id}/suggestPayrollCode | Suggest Payroll Code
[**update_automation_settings_employer**](EmployerApi.md#update_automation_settings_employer) | **PUT** /employers/{id}/automation | Update Automation Settings
[**update_custom_payslip_employer**](EmployerApi.md#update_custom_payslip_employer) | **POST** /employers/{id}/custompayslip | Update Payslip Customisations
[**update_employer**](EmployerApi.md#update_employer) | **PUT** /employers/{id} | Update an Employer
[**update_employer_opening_balances_employer**](EmployerApi.md#update_employer_opening_balances_employer) | **PUT** /employers/{id}/openingbalances | Update EmployerOpeningBalances
[**update_logo_employer**](EmployerApi.md#update_logo_employer) | **POST** /employers/{id}/logo | Update Employer Logo

# **apply_year_end_employer**
> YearEnd apply_year_end_employer(id, opts)

Make Year End Changes

Apply the changes for the year end and start the next tax year for the employer.

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

api_instance = SwaggerClient::EmployerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer
opts = { 
  body: nil # Hash<String, null> | You can suppress the emailing of P60s and/or CIS Statements by supplying a value of true for dontEmailP60s and/or dontEmailCisStatements
}

begin
  #Make Year End Changes
  result = api_instance.apply_year_end_employer(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployerApi->apply_year_end_employer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Employer | 
 **body** | [**Hash&lt;String, null&gt;**](Hash.md)| You can suppress the emailing of P60s and/or CIS Statements by supplying a value of true for dontEmailP60s and/or dontEmailCisStatements | [optional] 

### Return type

[**YearEnd**](YearEnd.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **calendar_employer**
> Array&lt;CalendarEntry&gt; calendar_employer(id, opts)

Get Employer Calendar

Get a list of upcoming CalendarEntry for the Employer.

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

api_instance = SwaggerClient::EmployerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer.
opts = { 
  from: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 
  to: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | 
}

begin
  #Get Employer Calendar
  result = api_instance.calendar_employer(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployerApi->calendar_employer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Employer. | 
 **from** | **DateTime**|  | [optional] 
 **to** | **DateTime**|  | [optional] 

### Return type

[**Array&lt;CalendarEntry&gt;**](CalendarEntry.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_employer**
> Employer create_employer(opts)

Create an Employer

Use this method to create a new Employer\\n  The only required field is the Employer name.

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

api_instance = SwaggerClient::EmployerApi.new
opts = { 
  body: SwaggerClient::Employer.new # Employer | 
}

begin
  #Create an Employer
  result = api_instance.create_employer(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployerApi->create_employer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Employer**](Employer.md)|  | [optional] 

### Return type

[**Employer**](Employer.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **custom_payslip_employer**
> PayslipCustomisation custom_payslip_employer(id)

Get Payslip Customisations

Get the settings used to customise PaySlips for this Employer

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

api_instance = SwaggerClient::EmployerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer you want customisations for.


begin
  #Get Payslip Customisations
  result = api_instance.custom_payslip_employer(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployerApi->custom_payslip_employer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Employer you want customisations for. | 

### Return type

[**PayslipCustomisation**](PayslipCustomisation.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_employer**
> delete_employer(id)

Delete an Employer

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

api_instance = SwaggerClient::EmployerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer you want to delete.


begin
  #Delete an Employer
  api_instance.delete_employer(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployerApi->delete_employer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Employer you want to delete. | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **employer_direct_debit_mandate_required_employer**
> BOOLEAN employer_direct_debit_mandate_required_employer(id)

Get DirectDebitMandate

Returns whether Direct Debit Mandate Activation for the owner of the current employer is required.

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

api_instance = SwaggerClient::EmployerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer whose Direct Debit Mandate you want to retrieve.


begin
  #Get DirectDebitMandate
  result = api_instance.employer_direct_debit_mandate_required_employer(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployerApi->employer_direct_debit_mandate_required_employer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Employer whose Direct Debit Mandate you want to retrieve. | 

### Return type

**BOOLEAN**

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_automation_settings_employer**
> AutomationSettings get_automation_settings_employer(id)

Get Automation Settings

Returns the AutomationSettings for the Employer

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

api_instance = SwaggerClient::EmployerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer


begin
  #Get Automation Settings
  result = api_instance.get_automation_settings_employer(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployerApi->get_automation_settings_employer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Employer | 

### Return type

[**AutomationSettings**](AutomationSettings.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_employer**
> Employer get_employer(id)

Get an Employer

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

api_instance = SwaggerClient::EmployerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer you want to retrieve.


begin
  #Get an Employer
  result = api_instance.get_employer(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployerApi->get_employer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Employer you want to retrieve. | 

### Return type

[**Employer**](Employer.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_employer_opening_balances_employer**
> EmployerOpeningBalances get_employer_opening_balances_employer(id)

Get EmployerOpeningBalances

Returns the EmployerOpeningBalances for the Employer

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

api_instance = SwaggerClient::EmployerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer


begin
  #Get EmployerOpeningBalances
  result = api_instance.get_employer_opening_balances_employer(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployerApi->get_employer_opening_balances_employer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Employer | 

### Return type

[**EmployerOpeningBalances**](EmployerOpeningBalances.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_group_memberships_employer**
> Array&lt;EmployerGroupMembership&gt; get_group_memberships_employer(id)

Get Employer Groups

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

api_instance = SwaggerClient::EmployerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer you want to retrieve Groups for.


begin
  #Get Employer Groups
  result = api_instance.get_group_memberships_employer(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployerApi->get_group_memberships_employer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Employer you want to retrieve Groups for. | 

### Return type

[**Array&lt;EmployerGroupMembership&gt;**](EmployerGroupMembership.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **import_csv_employer**
> Array&lt;Item&gt; import_csv_employer(opts)

Import CSV

Import employers from a CSV file.

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

api_instance = SwaggerClient::EmployerApi.new
opts = { 
  file: 'file_example' # String | 
  preview_only: false # BOOLEAN | Set to true and nothing will be imported but you'll be shown a preview of the data.
}

begin
  #Import CSV
  result = api_instance.import_csv_employer(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployerApi->import_csv_employer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **String**|  | [optional] 
 **preview_only** | **BOOLEAN**| Set to true and nothing will be imported but you&#x27;ll be shown a preview of the data. | [optional] [default to false]

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **index_employer**
> Array&lt;Item&gt; index_employer(opts)

List Employers

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

api_instance = SwaggerClient::EmployerApi.new
opts = { 
  employer_group_code: 'employer_group_code_example' # String | Optionally specify the code of an EmployerGroup to only see employers that are a member of that group.
}

begin
  #List Employers
  result = api_instance.index_employer(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployerApi->index_employer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_group_code** | **String**| Optionally specify the code of an EmployerGroup to only see employers that are a member of that group. | [optional] 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_users_employer**
> Array&lt;Item&gt; list_users_employer(id)

List Users

Returns a list of Users that have access to the given Employer

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

api_instance = SwaggerClient::EmployerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer you want a list of Users for.


begin
  #List Users
  result = api_instance.list_users_employer(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployerApi->list_users_employer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Employer you want a list of Users for. | 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **remove_user_employer**
> remove_user_employer(id, user_id)

Remove User

Removes a User from an Employer.\\n  You cannot remove Users that are marked as the owner of the Employer.  You must be the owner of the Employer in order to remove other Users.

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

api_instance = SwaggerClient::EmployerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer you want to remove the User from.
user_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the User you want to remove.


begin
  #Remove User
  api_instance.remove_user_employer(id, user_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployerApi->remove_user_employer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Employer you want to remove the User from. | 
 **user_id** | [**String**](.md)| The Id of the User you want to remove. | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **review_year_end_employer**
> YearEnd review_year_end_employer(id)

Review Year End Changes

View the changes that will be made when you start the next tax year for the employer

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

api_instance = SwaggerClient::EmployerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer


begin
  #Review Year End Changes
  result = api_instance.review_year_end_employer(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployerApi->review_year_end_employer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Employer | 

### Return type

[**YearEnd**](YearEnd.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **rti_requiring_attention_employer**
> Array&lt;Item&gt; rti_requiring_attention_employer(id)

RTI Documents Requiring Attention

Returns all RTI documents that have a Submission Status of NotSubmitted or ErrorResponse

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

api_instance = SwaggerClient::EmployerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer


begin
  #RTI Documents Requiring Attention
  result = api_instance.rti_requiring_attention_employer(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployerApi->rti_requiring_attention_employer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Employer | 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **search_employees_employer**
> Array&lt;Item&gt; search_employees_employer(opts)

Search Employees

Search all employers for an employee based on their name or payroll code.\\nEnsure your query is at least 3 characters long or you wont get any results.

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

api_instance = SwaggerClient::EmployerApi.new
opts = { 
  query: 'query_example', # String | The search string (at least 3 characters).
  exlude_cis_sub_contactors: false # BOOLEAN | If set to true, then we'll only search employees that aren't labeled as CIS Subcontractors
}

begin
  #Search Employees
  result = api_instance.search_employees_employer(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployerApi->search_employees_employer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search string (at least 3 characters). | [optional] 
 **exlude_cis_sub_contactors** | **BOOLEAN**| If set to true, then we&#x27;ll only search employees that aren&#x27;t labeled as CIS Subcontractors | [optional] [default to false]

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **search_employer**
> Array&lt;Item&gt; search_employer(opts)

Search Employers

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

api_instance = SwaggerClient::EmployerApi.new
opts = { 
  query: 'query_example' # String | 
}

begin
  #Search Employers
  result = api_instance.search_employer(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployerApi->search_employer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**|  | [optional] 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set_group_memberships_employer**
> Array&lt;EmployerGroupMembership&gt; set_group_memberships_employer(id, opts)

Set Employer Groups

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

api_instance = SwaggerClient::EmployerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer you want to set Groups for.
opts = { 
  body: [SwaggerClient::EmployerGroupMembership.new] # Array<EmployerGroupMembership> | 
}

begin
  #Set Employer Groups
  result = api_instance.set_group_memberships_employer(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployerApi->set_group_memberships_employer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Employer you want to set Groups for. | 
 **body** | [**Array&lt;EmployerGroupMembership&gt;**](EmployerGroupMembership.md)|  | [optional] 

### Return type

[**Array&lt;EmployerGroupMembership&gt;**](EmployerGroupMembership.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **set_owner_employer**
> set_owner_employer(id, opts)

Set Owner

Sets the owner for the employer.\\n  You must be the owner of the Employer to set this value.\\n  The user you are setting as the owner must already have the role Admin.\\n  You can get a list of users from the ListUsers endpoint.

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

api_instance = SwaggerClient::EmployerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer you want to change the ownership of.
opts = { 
  body: 'body_example' # String | The Id of the User you want a change ownership to. They must already be a user for this employer and have the admin role assigned to them.
}

begin
  #Set Owner
  api_instance.set_owner_employer(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployerApi->set_owner_employer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Employer you want to change the ownership of. | 
 **body** | [**String**](String.md)| The Id of the User you want a change ownership to. They must already be a user for this employer and have the admin role assigned to them. | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined



# **suggest_pay_code_employer**
> String suggest_pay_code_employer(id)

Suggest Payroll Code

This helper method returns a unique code for the next Employee that you create for the specified Employer.\\nYou don't have to use the value provided, you can use any value that is unqiue across Employees for the Employer.

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

api_instance = SwaggerClient::EmployerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer you want a suggestion for.


begin
  #Suggest Payroll Code
  result = api_instance.suggest_pay_code_employer(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployerApi->suggest_pay_code_employer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Employer you want a suggestion for. | 

### Return type

**String**

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_automation_settings_employer**
> AutomationSettings update_automation_settings_employer(id, opts)

Update Automation Settings

Updates the AutomationSettings for the Employer

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

api_instance = SwaggerClient::EmployerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer
opts = { 
  body: SwaggerClient::AutomationSettings.new # AutomationSettings | 
}

begin
  #Update Automation Settings
  result = api_instance.update_automation_settings_employer(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployerApi->update_automation_settings_employer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Employer | 
 **body** | [**AutomationSettings**](AutomationSettings.md)|  | [optional] 

### Return type

[**AutomationSettings**](AutomationSettings.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **update_custom_payslip_employer**
> PayslipCustomisation update_custom_payslip_employer(id, opts)

Update Payslip Customisations

Set the settings used to customise PaySlips for this Employer

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

api_instance = SwaggerClient::EmployerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer you want customisations for.
opts = { 
  body: SwaggerClient::PayslipCustomisation.new # PayslipCustomisation | 
}

begin
  #Update Payslip Customisations
  result = api_instance.update_custom_payslip_employer(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployerApi->update_custom_payslip_employer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Employer you want customisations for. | 
 **body** | [**PayslipCustomisation**](PayslipCustomisation.md)|  | [optional] 

### Return type

[**PayslipCustomisation**](PayslipCustomisation.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **update_employer**
> Employer update_employer(id, opts)

Update an Employer

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

api_instance = SwaggerClient::EmployerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer you want to update.
opts = { 
  body: SwaggerClient::Employer.new # Employer | 
}

begin
  #Update an Employer
  result = api_instance.update_employer(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployerApi->update_employer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Employer you want to update. | 
 **body** | [**Employer**](Employer.md)|  | [optional] 

### Return type

[**Employer**](Employer.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **update_employer_opening_balances_employer**
> EmployerOpeningBalances update_employer_opening_balances_employer(id, opts)

Update EmployerOpeningBalances

Updates the EmployerOpeningBalances for the Employer for their StartYear

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

api_instance = SwaggerClient::EmployerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer
opts = { 
  body: SwaggerClient::EmployerOpeningBalances.new # EmployerOpeningBalances | 
}

begin
  #Update EmployerOpeningBalances
  result = api_instance.update_employer_opening_balances_employer(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployerApi->update_employer_opening_balances_employer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Employer | 
 **body** | [**EmployerOpeningBalances**](EmployerOpeningBalances.md)|  | [optional] 

### Return type

[**EmployerOpeningBalances**](EmployerOpeningBalances.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **update_logo_employer**
> Employer update_logo_employer(id, opts)

Update Employer Logo

If you already have a URL for the employer Logo then you can just set the LogoUrl property of the Employer.\\n  Alternatively, submit a logo here and we'll upload it and set the LogoUrl for you.

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

api_instance = SwaggerClient::EmployerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer you want to update.
opts = { 
  file: 'file_example' # String | 
}

begin
  #Update Employer Logo
  result = api_instance.update_logo_employer(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployerApi->update_logo_employer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The Id of the Employer you want to update. | 
 **file** | **String**|  | [optional] 

### Return type

[**Employer**](Employer.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



