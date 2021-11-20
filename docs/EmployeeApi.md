# SwaggerClient::EmployeeApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apply_pay_increase_employee**](EmployeeApi.md#apply_pay_increase_employee) | **PUT** /employers/{employerId}/employees/payincrease | Apply Pay Increase
[**apply_pay_options_employee**](EmployeeApi.md#apply_pay_options_employee) | **PUT** /employers/{employerId}/employees/payoptions | Apply PayOptions
[**average_weekly_earnings_employee**](EmployeeApi.md#average_weekly_earnings_employee) | **GET** /employers/{employerId}/employees/{id}/awe | Average Weekly Earnings
[**base_hourly_rate_employee**](EmployeeApi.md#base_hourly_rate_employee) | **GET** /employers/{employerId}/employees/{id}/basehourlyrate | Calculate Base Hourly Rate
[**create_employee**](EmployeeApi.md#create_employee) | **POST** /employers/{employerId}/employees | Create a new Employee
[**delete_employee**](EmployeeApi.md#delete_employee) | **DELETE** /employers/{employerId}/employees/{id} | Delete an Employee
[**delete_multiple_employee**](EmployeeApi.md#delete_multiple_employee) | **POST** /employers/{employerId}/employees/delete | Delete Employees
[**delete_photo_employee**](EmployeeApi.md#delete_photo_employee) | **DELETE** /employers/{employerId}/employees/{id}/photo | Delete Photo
[**expiring_rtw_employee**](EmployeeApi.md#expiring_rtw_employee) | **GET** /employers/{employerId}/employees/expiring-rtw | Expiring RightToWork
[**get_department_memberships_employee**](EmployeeApi.md#get_department_memberships_employee) | **GET** /employers/{employerId}/employees/{id}/departments | Get Employee Departments
[**get_employee**](EmployeeApi.md#get_employee) | **GET** /employers/{employerId}/employees/{id} | Get an Employee
[**import_csv_employee**](EmployeeApi.md#import_csv_employee) | **POST** /employers/{employerId}/employees/import | Import CSV
[**index_employee**](EmployeeApi.md#index_employee) | **GET** /employers/{employerId}/employees | List Employees
[**leavers_employee**](EmployeeApi.md#leavers_employee) | **GET** /employers/{employerId}/employees/leavers | List Leavers
[**mark_as_leavers_employee**](EmployeeApi.md#mark_as_leavers_employee) | **PUT** /employers/{employerId}/employees/leavers | Mark as Leavers
[**minimum_wage_employee**](EmployeeApi.md#minimum_wage_employee) | **GET** /employers/{employerId}/employees/{id}/{taxYear}/minimum-wage | Minimum Wage
[**pay_run_entries_employee**](EmployeeApi.md#pay_run_entries_employee) | **GET** /employers/{employerId}/employees/{id}/payrunentries/{taxYear} | PayRunEntries for Employee
[**re_hire_employee**](EmployeeApi.md#re_hire_employee) | **GET** /employers/{employerId}/employees/{id}/rehire | Rehire an Employee
[**search_by_payroll_code_employee**](EmployeeApi.md#search_by_payroll_code_employee) | **GET** /employers/{employerId}/employees/search/payrollcode | Get Employee by Payroll Code
[**search_employee**](EmployeeApi.md#search_employee) | **GET** /employers/{employerId}/employees/search | Search Employer for Employees
[**set_department_memberships_employee**](EmployeeApi.md#set_department_memberships_employee) | **PUT** /employers/{employerId}/employees/{id}/departments | Set Employee Departments
[**set_on_hold_employee**](EmployeeApi.md#set_on_hold_employee) | **PUT** /employers/{employerId}/employees/onhold | Mark as On Hold
[**update_employee**](EmployeeApi.md#update_employee) | **PUT** /employers/{employerId}/employees/{id} | Update an Employee
[**update_photo_employee**](EmployeeApi.md#update_photo_employee) | **POST** /employers/{employerId}/employees/{id}/photo | Update Photo

# **apply_pay_increase_employee**
> apply_pay_increase_employee(employer_id, opts)

Apply Pay Increase

Increases the PayOptions.PayAmount and PayOptions.BaseHourlyRate by the percentage given.

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

api_instance = SwaggerClient::EmployeeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the employees belong.
opts = { 
  percentage: 1.2, # Float | 
  all_employees: true # BOOLEAN | Set this to true
}

begin
  #Apply Pay Increase
  api_instance.apply_pay_increase_employee(employer_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployeeApi->apply_pay_increase_employee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the employees belong. | 
 **percentage** | **Float**|  | [optional] 
 **all_employees** | **BOOLEAN**| Set this to true | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **apply_pay_options_employee**
> apply_pay_options_employee(employer_id, opts)

Apply PayOptions

Overwrite the PayOptions for all employees with the values provided.\\n  Currently only the following fields are updated: period, payAmount, basis, payamountMultiplier, nationalMinimumWage and regularPaylines.

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

api_instance = SwaggerClient::EmployeeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the employees belong.
opts = { 
  body: SwaggerClient::PayOptions.new # PayOptions | 
}

begin
  #Apply PayOptions
  api_instance.apply_pay_options_employee(employer_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployeeApi->apply_pay_options_employee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the employees belong. | 
 **body** | [**PayOptions**](PayOptions.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined



# **average_weekly_earnings_employee**
> AverageWeeklyEarnings average_weekly_earnings_employee(employer_id, id, opts)

Average Weekly Earnings

Calculates the Average Weekly Earnings for an Employee at the given date.\\n  You can optionally include a LeaveType and we'll adjust the given date accordingly\\n  For example if you specify Maternity then it'll be moved back by 15 weeks

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

api_instance = SwaggerClient::EmployeeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Employee Id.
opts = { 
  date: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | The date at which you want to calculate the earnings from.
  leave_type: SwaggerClient::LeaveType.new # LeaveType | 
}

begin
  #Average Weekly Earnings
  result = api_instance.average_weekly_earnings_employee(employer_id, id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployeeApi->average_weekly_earnings_employee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer | 
 **id** | [**String**](.md)| The Employee Id. | 
 **date** | **DateTime**| The date at which you want to calculate the earnings from. | [optional] 
 **leave_type** | [**LeaveType**](.md)|  | [optional] 

### Return type

[**AverageWeeklyEarnings**](AverageWeeklyEarnings.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **base_hourly_rate_employee**
> Float base_hourly_rate_employee(employer_id, id, opts)

Calculate Base Hourly Rate

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

api_instance = SwaggerClient::EmployeeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer.
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Employee Id.
opts = { 
  pay_period: SwaggerClient::PayPeriods.new, # PayPeriods | The frequency that this Employee is paid.
  pay_basis: SwaggerClient::PayBasis.new, # PayBasis | 
  pay_amount: 1.2 # Float | The amount the Employee is regularly paid each period.
}

begin
  #Calculate Base Hourly Rate
  result = api_instance.base_hourly_rate_employee(employer_id, id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployeeApi->base_hourly_rate_employee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer. | 
 **id** | [**String**](.md)| The Employee Id. | 
 **pay_period** | [**PayPeriods**](.md)| The frequency that this Employee is paid. | [optional] 
 **pay_basis** | [**PayBasis**](.md)|  | [optional] 
 **pay_amount** | **Float**| The amount the Employee is regularly paid each period. | [optional] 

### Return type

**Float**

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_employee**
> Employee create_employee(employer_id, opts)

Create a new Employee

Creates an Employee for the Employer specified.\\nIf you don't provide PayOptions then the DefaultPayOptions from the Employer will be used

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

api_instance = SwaggerClient::EmployeeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer you are creating the Employee for
opts = { 
  body: SwaggerClient::Employee.new # Employee | 
}

begin
  #Create a new Employee
  result = api_instance.create_employee(employer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployeeApi->create_employee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer you are creating the Employee for | 
 **body** | [**Employee**](Employee.md)|  | [optional] 

### Return type

[**Employee**](Employee.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **delete_employee**
> delete_employee(employer_id, id)

Delete an Employee

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

api_instance = SwaggerClient::EmployeeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the Employee belongs.
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employee you want to delete.


begin
  #Delete an Employee
  api_instance.delete_employee(employer_id, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployeeApi->delete_employee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the Employee belongs. | 
 **id** | [**String**](.md)| The Id of the Employee you want to delete. | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_multiple_employee**
> delete_multiple_employee(employer_id, opts)

Delete Employees

Used to delete multiple employees.\\n  The body should contain an array of Ids to identify the employees to delete.

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

api_instance = SwaggerClient::EmployeeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the Employees belong
opts = { 
  body: ['body_example'] # Array<String> | 
}

begin
  #Delete Employees
  api_instance.delete_multiple_employee(employer_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployeeApi->delete_multiple_employee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the Employees belong | 
 **body** | [**Array&lt;String&gt;**](String.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined



# **delete_photo_employee**
> delete_photo_employee(employer_id, id)

Delete Photo

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

api_instance = SwaggerClient::EmployeeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employee you want to update.


begin
  #Delete Photo
  api_instance.delete_photo_employee(employer_id, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployeeApi->delete_photo_employee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)| The Id of the Employee you want to update. | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **expiring_rtw_employee**
> Array&lt;Item&gt; expiring_rtw_employee(employer_id, opts)

Expiring RightToWork

Returns a list of Item representing Employees that have a RightToWork with a DocumentExpiring date within the next numberOfDays days.

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

api_instance = SwaggerClient::EmployeeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to search.
opts = { 
  number_of_days: 56 # Integer | The number of days in the future to look got expiry dates.
}

begin
  #Expiring RightToWork
  result = api_instance.expiring_rtw_employee(employer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployeeApi->expiring_rtw_employee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to search. | 
 **number_of_days** | **Integer**| The number of days in the future to look got expiry dates. | [optional] 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_department_memberships_employee**
> Array&lt;DepartmentMembership&gt; get_department_memberships_employee(employer_id, id)

Get Employee Departments

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

api_instance = SwaggerClient::EmployeeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the Employee belongs.
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employee you want to retrieve Departments for.


begin
  #Get Employee Departments
  result = api_instance.get_department_memberships_employee(employer_id, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployeeApi->get_department_memberships_employee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the Employee belongs. | 
 **id** | [**String**](.md)| The Id of the Employee you want to retrieve Departments for. | 

### Return type

[**Array&lt;DepartmentMembership&gt;**](DepartmentMembership.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_employee**
> Employee get_employee(employer_id, id)

Get an Employee

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

api_instance = SwaggerClient::EmployeeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the Employee belongs.
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employee you want to retrieve.


begin
  #Get an Employee
  result = api_instance.get_employee(employer_id, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployeeApi->get_employee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the Employee belongs. | 
 **id** | [**String**](.md)| The Id of the Employee you want to retrieve. | 

### Return type

[**Employee**](Employee.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **import_csv_employee**
> Array&lt;Item&gt; import_csv_employee(employer_id, opts)

Import CSV

Import employee data from a CSV file.

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

api_instance = SwaggerClient::EmployeeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer
opts = { 
  file: 'file_example' # String | 
  format: SwaggerClient::CsvFileFormat.new # CsvFileFormat | The format of the CSV file.
  preview_only: false # BOOLEAN | Set to true and nothing will be imported but you'll be shown a preview of the data.
}

begin
  #Import CSV
  result = api_instance.import_csv_employee(employer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployeeApi->import_csv_employee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer | 
 **file** | **String**|  | [optional] 
 **format** | [**CsvFileFormat**](.md)| The format of the CSV file. | [optional] 
 **preview_only** | **BOOLEAN**| Set to true and nothing will be imported but you&#x27;ll be shown a preview of the data. | [optional] [default to false]

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **index_employee**
> Array&lt;Item&gt; index_employee(employer_id, opts)

List Employees

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

api_instance = SwaggerClient::EmployeeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer for which you want to see Employees
opts = { 
  page_num: 56, # Integer | Zero-based page number, used in conjunction with pageSize
  page_size: 56, # Integer | The number of items per page
  status: SwaggerClient::EmployeeStatus.new, # EmployeeStatus | Restrict the results to employees with the given status
  dept_code: 'dept_code_example' # String | If specified then only employees assigned to this department code will be listed
}

begin
  #List Employees
  result = api_instance.index_employee(employer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployeeApi->index_employee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer for which you want to see Employees | 
 **page_num** | **Integer**| Zero-based page number, used in conjunction with pageSize | [optional] 
 **page_size** | **Integer**| The number of items per page | [optional] 
 **status** | [**EmployeeStatus**](.md)| Restrict the results to employees with the given status | [optional] 
 **dept_code** | **String**| If specified then only employees assigned to this department code will be listed | [optional] 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **leavers_employee**
> Array&lt;Item&gt; leavers_employee(employer_id, opts)

List Leavers

Returns a list of all Employees that have a leaving date set

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

api_instance = SwaggerClient::EmployeeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer for which you want to see Leavers
opts = { 
  only_unsent_p45s: false # BOOLEAN | If set to true then only employees that don't have the P45Sent set to true will be returned
}

begin
  #List Leavers
  result = api_instance.leavers_employee(employer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployeeApi->leavers_employee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer for which you want to see Leavers | 
 **only_unsent_p45s** | **BOOLEAN**| If set to true then only employees that don&#x27;t have the P45Sent set to true will be returned | [optional] [default to false]

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **mark_as_leavers_employee**
> mark_as_leavers_employee(employer_id, opts)

Mark as Leavers

Used to mark multiple employees as leavers.\\n  The body should contain an array of Ids to identify the employees to update.

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

api_instance = SwaggerClient::EmployeeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the Employees belong
opts = { 
  body: ['body_example'] # Array<String> | 
  date: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | The date the employees left or are leaving
  email_p45: true # BOOLEAN | If set to true, the employee will be email a P45 if they have an email address
}

begin
  #Mark as Leavers
  api_instance.mark_as_leavers_employee(employer_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployeeApi->mark_as_leavers_employee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the Employees belong | 
 **body** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **date** | **DateTime**| The date the employees left or are leaving | [optional] 
 **email_p45** | **BOOLEAN**| If set to true, the employee will be email a P45 if they have an email address | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined



# **minimum_wage_employee**
> Float minimum_wage_employee(employer_id, id, tax_year, opts)

Minimum Wage

Calculates the National Minimum Wage for this employee for the given TaxYear and based on   their age at the given date

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

api_instance = SwaggerClient::EmployeeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Employee Id.
tax_year = SwaggerClient::TaxYear.new # TaxYear | The TaxYear
opts = { 
  date: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | The date for which we should calculate the employees age, for not provided we'll use todays date.
}

begin
  #Minimum Wage
  result = api_instance.minimum_wage_employee(employer_id, id, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployeeApi->minimum_wage_employee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer | 
 **id** | [**String**](.md)| The Employee Id. | 
 **tax_year** | [**TaxYear**](.md)| The TaxYear | 
 **date** | **DateTime**| The date for which we should calculate the employees age, for not provided we&#x27;ll use todays date. | [optional] 

### Return type

**Float**

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **pay_run_entries_employee**
> Array&lt;Item&gt; pay_run_entries_employee(employer_id, id, tax_year)

PayRunEntries for Employee

List PayRunEntries for the given Employee in the specified TaxYear

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

api_instance = SwaggerClient::EmployeeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to search.
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Employee Id.
tax_year = SwaggerClient::TaxYear.new # TaxYear | The TaxYear for which you want to list PayRunEntries.


begin
  #PayRunEntries for Employee
  result = api_instance.pay_run_entries_employee(employer_id, id, tax_year)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployeeApi->pay_run_entries_employee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to search. | 
 **id** | [**String**](.md)| The Employee Id. | 
 **tax_year** | [**TaxYear**](.md)| The TaxYear for which you want to list PayRunEntries. | 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **re_hire_employee**
> re_hire_employee(employer_id, id)

Rehire an Employee

If an employee has left and you want to rehire him/her, then this method will create a copy of the employee record but with a new payroll code

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

api_instance = SwaggerClient::EmployeeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the Employee belongs.
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employee you want to rehire.


begin
  #Rehire an Employee
  api_instance.re_hire_employee(employer_id, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployeeApi->re_hire_employee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the Employee belongs. | 
 **id** | [**String**](.md)| The Id of the Employee you want to rehire. | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **search_by_payroll_code_employee**
> Item search_by_payroll_code_employee(employer_id, opts)

Get Employee by Payroll Code

Get an employee by their payroll code. Will return an Item that contains the Id for you to retrieve the full Employee record

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

api_instance = SwaggerClient::EmployeeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer.
opts = { 
  code: 'code_example' # String | The payroll code to look for.
}

begin
  #Get Employee by Payroll Code
  result = api_instance.search_by_payroll_code_employee(employer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployeeApi->search_by_payroll_code_employee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer. | 
 **code** | **String**| The payroll code to look for. | [optional] 

### Return type

[**Item**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **search_employee**
> Array&lt;Item&gt; search_employee(employer_id, opts)

Search Employer for Employees

Search for an employee of the specified employer based on their name or payroll code.\\nEnsure your query is at least 3 characters long or you wont get any results.

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

api_instance = SwaggerClient::EmployeeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to search.
opts = { 
  query: 'query_example', # String | The search string (at least 3 characters).
  exlude_cis_sub_contactors: false # BOOLEAN | If set to true, then we'll only search employees that aren't labelled as CIS Subcontractors
}

begin
  #Search Employer for Employees
  result = api_instance.search_employee(employer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployeeApi->search_employee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to search. | 
 **query** | **String**| The search string (at least 3 characters). | [optional] 
 **exlude_cis_sub_contactors** | **BOOLEAN**| If set to true, then we&#x27;ll only search employees that aren&#x27;t labelled as CIS Subcontractors | [optional] [default to false]

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set_department_memberships_employee**
> Array&lt;DepartmentMembership&gt; set_department_memberships_employee(employer_idid, opts)

Set Employee Departments

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

api_instance = SwaggerClient::EmployeeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the Employee belongs.
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employee you want to set Departments for.
opts = { 
  body: [SwaggerClient::DepartmentMembership.new] # Array<DepartmentMembership> | 
}

begin
  #Set Employee Departments
  result = api_instance.set_department_memberships_employee(employer_idid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployeeApi->set_department_memberships_employee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the Employee belongs. | 
 **id** | [**String**](.md)| The Id of the Employee you want to set Departments for. | 
 **body** | [**Array&lt;DepartmentMembership&gt;**](DepartmentMembership.md)|  | [optional] 

### Return type

[**Array&lt;DepartmentMembership&gt;**](DepartmentMembership.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **set_on_hold_employee**
> set_on_hold_employee(employer_id, opts)

Mark as On Hold

Used to mark multiple employees as On Hold or not On Hold.\\n  The body should contain an array of Ids to identify the employees to update.

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

api_instance = SwaggerClient::EmployeeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the Employees belong
opts = { 
  body: ['body_example'] # Array<String> | 
  on_hold: true # BOOLEAN | The OnHold status to set
}

begin
  #Mark as On Hold
  api_instance.set_on_hold_employee(employer_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployeeApi->set_on_hold_employee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the Employees belong | 
 **body** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **on_hold** | **BOOLEAN**| The OnHold status to set | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined



# **update_employee**
> Employee update_employee(employer_idid, opts)

Update an Employee

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

api_instance = SwaggerClient::EmployeeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the Employee belongs.
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employee you want to update.
opts = { 
  body: SwaggerClient::Employee.new # Employee | 
}

begin
  #Update an Employee
  result = api_instance.update_employee(employer_idid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployeeApi->update_employee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the Employee belongs. | 
 **id** | [**String**](.md)| The Id of the Employee you want to update. | 
 **body** | [**Employee**](Employee.md)|  | [optional] 

### Return type

[**Employee**](Employee.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **update_photo_employee**
> Employee update_photo_employee(employer_idid, opts)

Update Photo

If you already have a URL for the employee photo then you can just set the PhotoUrl property of the Employee.\\n  Alternatively, submit an image here and we'll upload it, resize it to 200px squared and set the PhotoUrl for you.

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

api_instance = SwaggerClient::EmployeeApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employee you want to update.
opts = { 
  file: 'file_example' # String | 
}

begin
  #Update Photo
  result = api_instance.update_photo_employee(employer_idid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EmployeeApi->update_photo_employee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)| The Id of the Employee you want to update. | 
 **file** | **String**|  | [optional] 

### Return type

[**Employee**](Employee.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



