# SwaggerClient::AutoEnrolmentApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assess_auto_enrolment**](AutoEnrolmentApi.md#assess_auto_enrolment) | **POST** /employers/{employerId}/employees/{employeeId}/autoenrolment/assessments | Assess Employee for AutoEnrolment
[**delete_auto_enrolment**](AutoEnrolmentApi.md#delete_auto_enrolment) | **DELETE** /employers/{employerId}/employees/{employeeId}/autoenrolment/assessments/{id} | Delete AE Assessment
[**email_letter_auto_enrolment**](AutoEnrolmentApi.md#email_letter_auto_enrolment) | **POST** /employers/{employerId}/employees/{employeeId}/autoenrolment/assessments/{id}/letter/email | Email Letter
[**get_auto_enrolment**](AutoEnrolmentApi.md#get_auto_enrolment) | **GET** /employers/{employerId}/employees/{employeeId}/autoenrolment/assessments/{id} | Get AE Assessment
[**get_last_auto_enrolment**](AutoEnrolmentApi.md#get_last_auto_enrolment) | **GET** /employers/{employerId}/employees/{employeeId}/autoenrolment/assessments/last | Get Last AE Assessment
[**get_letter_auto_enrolment**](AutoEnrolmentApi.md#get_letter_auto_enrolment) | **GET** /employers/{employerId}/employees/{employeeId}/autoenrolment/assessments/{id}/letter | Get Letter
[**list_auto_enrolment**](AutoEnrolmentApi.md#list_auto_enrolment) | **GET** /employers/{employerId}/employees/{employeeId}/autoenrolment | Get AE Assessments
[**mark_letter_as_sent_auto_enrolment**](AutoEnrolmentApi.md#mark_letter_as_sent_auto_enrolment) | **PUT** /employers/{employerId}/employees/{employeeId}/autoenrolment/assessments/{id}/letter/sent | Mark Letter as Sent
[**pending_letters_auto_enrolment**](AutoEnrolmentApi.md#pending_letters_auto_enrolment) | **GET** /employers/{employerId}/autoenrolment/letters/pending | Pending Letters
[**pending_postponement_letters_auto_enrolment**](AutoEnrolmentApi.md#pending_postponement_letters_auto_enrolment) | **GET** /employers/{employerId}/autoenrolment/letters/pending/postponement | Pending Postponement Letters
[**reenrol_auto_enrolment**](AutoEnrolmentApi.md#reenrol_auto_enrolment) | **GET** /employers/{employerId}/autoenrolment/renrol | Cyclical Re-enrolment
[**set_state_auto_enrolment**](AutoEnrolmentApi.md#set_state_auto_enrolment) | **PUT** /employers/{employerId}/employees/{employeeId}/autoenrolment/state | Update State

# **assess_auto_enrolment**
> AeAssessment assess_auto_enrolment(employer_id, employee_id)

Assess Employee for AutoEnrolment

Asseses an Employee for AutoEnrolment

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

api_instance = SwaggerClient::AutoEnrolmentApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the Employee belongs
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employee you want to assess


begin
  #Assess Employee for AutoEnrolment
  result = api_instance.assess_auto_enrolment(employer_id, employee_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AutoEnrolmentApi->assess_auto_enrolment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the Employee belongs | 
 **employee_id** | [**String**](.md)| The Id of the Employee you want to assess | 

### Return type

[**AeAssessment**](AeAssessment.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **delete_auto_enrolment**
> delete_auto_enrolment(employer_id, employee_id, opts)

Delete AE Assessment

Deletes the AeAssessment specified by the Id for the Employee specified by the EmployeeId.

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

api_instance = SwaggerClient::AutoEnrolmentApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the Employee belongs
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employee the assessment is for
opts = { 
  id: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Assessment.
}

begin
  #Delete AE Assessment
  api_instance.delete_auto_enrolment(employer_id, employee_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AutoEnrolmentApi->delete_auto_enrolment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the Employee belongs | 
 **employee_id** | [**String**](.md)| The Id of the Employee the assessment is for | 
 **id** | [**String**](.md)| The Id of the Assessment. | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **email_letter_auto_enrolment**
> EmployerEmail email_letter_auto_enrolment(employer_id, employee_id, id)

Email Letter

Send via email letter that needs to be sent to an employee as a result of the assessment.\\n  The letter is then marked as having been sent.

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

api_instance = SwaggerClient::AutoEnrolmentApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the Employee belongs
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employee the assessment is for
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Assessment


begin
  #Email Letter
  result = api_instance.email_letter_auto_enrolment(employer_id, employee_id, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AutoEnrolmentApi->email_letter_auto_enrolment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the Employee belongs | 
 **employee_id** | [**String**](.md)| The Id of the Employee the assessment is for | 
 **id** | [**String**](.md)| The Id of the Assessment | 

### Return type

[**EmployerEmail**](EmployerEmail.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_auto_enrolment**
> AeAssessment get_auto_enrolment(employer_id, employee_id, opts)

Get AE Assessment

Returns the specified AeAssessment for the specified Employee

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

api_instance = SwaggerClient::AutoEnrolmentApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the Employee belongs
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employee the assessment is for
opts = { 
  id: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Assessment.
}

begin
  #Get AE Assessment
  result = api_instance.get_auto_enrolment(employer_id, employee_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AutoEnrolmentApi->get_auto_enrolment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the Employee belongs | 
 **employee_id** | [**String**](.md)| The Id of the Employee the assessment is for | 
 **id** | [**String**](.md)| The Id of the Assessment. | [optional] 

### Return type

[**AeAssessment**](AeAssessment.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_last_auto_enrolment**
> AeAssessment get_last_auto_enrolment(employer_id, employee_id)

Get Last AE Assessment

Returns the most recent AeAssessment for an Employee

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

api_instance = SwaggerClient::AutoEnrolmentApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the Employee belongs
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employee the assessment is for


begin
  #Get Last AE Assessment
  result = api_instance.get_last_auto_enrolment(employer_id, employee_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AutoEnrolmentApi->get_last_auto_enrolment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the Employee belongs | 
 **employee_id** | [**String**](.md)| The Id of the Employee the assessment is for | 

### Return type

[**AeAssessment**](AeAssessment.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_letter_auto_enrolment**
> ReportResponse get_letter_auto_enrolment(employer_id, employee_id, id, opts)

Get Letter

Returns either a PDF or HTML (depending on accept header)   of the letter that needs to be sent to an employee as a result of the assessment.\\n  The same ReportResponse model that is used for reports is used here.

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

api_instance = SwaggerClient::AutoEnrolmentApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the Employee belongs
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employee the assessment is for
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Assessment
opts = { 
  accept: 'accept_example' # String | 
}

begin
  #Get Letter
  result = api_instance.get_letter_auto_enrolment(employer_id, employee_id, id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AutoEnrolmentApi->get_letter_auto_enrolment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the Employee belongs | 
 **employee_id** | [**String**](.md)| The Id of the Employee the assessment is for | 
 **id** | [**String**](.md)| The Id of the Assessment | 
 **accept** | **String**|  | [optional] 

### Return type

[**ReportResponse**](ReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/pdf, text/html



# **list_auto_enrolment**
> Array&lt;Item&gt; list_auto_enrolment(employer_id, employee_id)

Get AE Assessments

Returns all AE Assessments for the Employee specified.

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

api_instance = SwaggerClient::AutoEnrolmentApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the Employee belongs
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employee for which you want to retrieve AE Assessments


begin
  #Get AE Assessments
  result = api_instance.list_auto_enrolment(employer_id, employee_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AutoEnrolmentApi->list_auto_enrolment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the Employee belongs | 
 **employee_id** | [**String**](.md)| The Id of the Employee for which you want to retrieve AE Assessments | 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **mark_letter_as_sent_auto_enrolment**
> mark_letter_as_sent_auto_enrolment(employer_id, employee_id, id)

Mark Letter as Sent

Update an Assessment to mark the letter as sent.\\n  This is done automatically if you send the letter via email so you'd  only need to use this is you are printing/posting the letter.

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

api_instance = SwaggerClient::AutoEnrolmentApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the Employee belongs
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employee the assessment is for
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Assessment


begin
  #Mark Letter as Sent
  api_instance.mark_letter_as_sent_auto_enrolment(employer_id, employee_id, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AutoEnrolmentApi->mark_letter_as_sent_auto_enrolment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the Employee belongs | 
 **employee_id** | [**String**](.md)| The Id of the Employee the assessment is for | 
 **id** | [**String**](.md)| The Id of the Assessment | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **pending_letters_auto_enrolment**
> Array&lt;Item&gt; pending_letters_auto_enrolment(employer_id)

Pending Letters

Returns all AE Assessments that are awaiting a letter to be sent

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

api_instance = SwaggerClient::AutoEnrolmentApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer


begin
  #Pending Letters
  result = api_instance.pending_letters_auto_enrolment(employer_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AutoEnrolmentApi->pending_letters_auto_enrolment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer | 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **pending_postponement_letters_auto_enrolment**
> Array&lt;Item&gt; pending_postponement_letters_auto_enrolment(employer_id)

Pending Postponement Letters

Returns all employees that are awaiting a postponement letter to be sent.\\n  Because there is no associated AeAssessment they can't be returned with the other pending letters

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

api_instance = SwaggerClient::AutoEnrolmentApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer


begin
  #Pending Postponement Letters
  result = api_instance.pending_postponement_letters_auto_enrolment(employer_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AutoEnrolmentApi->pending_postponement_letters_auto_enrolment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer | 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **reenrol_auto_enrolment**
> Array&lt;Item&gt; reenrol_auto_enrolment(employer_id, opts)

Cyclical Re-enrolment

Performs a Cyclical Re-enrolment. All employees that have opted-out or ceased membership    will be re-assessed and auto-enrolled if necessary.\\n  The employers cyclical re-enrolment date will then be updated to the date provided.

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

api_instance = SwaggerClient::AutoEnrolmentApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer
opts = { 
  cyclical_reenrolment_date: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | The new Cyclical Re-enrolment Date for the  Employer
}

begin
  #Cyclical Re-enrolment
  result = api_instance.reenrol_auto_enrolment(employer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AutoEnrolmentApi->reenrol_auto_enrolment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer | 
 **cyclical_reenrolment_date** | **DateTime**| The new Cyclical Re-enrolment Date for the  Employer | [optional] 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **set_state_auto_enrolment**
> AeAssessment set_state_auto_enrolment(employer_id, employee_id, opts)

Update State

Updates the AutoEnrolment state for an Employee.\\n   You would use this API call to process notices such as Opt Out, Opt In, etc.\\n  A new assessment is returned showing the result of the state change.

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

api_instance = SwaggerClient::AutoEnrolmentApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the Employee belongs
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employee you want to set the status for
opts = { 
  state: SwaggerClient::AeEmployeeState.new, # AeEmployeeState | The AutoEnrolment State to set for the Employee
  status: SwaggerClient::AeStatus.new, # AeStatus | 
  state_date: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Optional. Will default to the current date
  pension_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | Optional. Used to override the default AE Pension. Only valid with states of Enrol, VoluntaryJoiner or OptIn
  worker_group_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Optional. Used to override the default AE Pension Workergroup. Only valid with states of Enrol, Join or OptIn. Must be provided if a pensionId is being provided.
}

begin
  #Update State
  result = api_instance.set_state_auto_enrolment(employer_id, employee_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AutoEnrolmentApi->set_state_auto_enrolment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the Employee belongs | 
 **employee_id** | [**String**](.md)| The Id of the Employee you want to set the status for | 
 **state** | [**AeEmployeeState**](.md)| The AutoEnrolment State to set for the Employee | [optional] 
 **status** | [**AeStatus**](.md)|  | [optional] 
 **state_date** | **DateTime**| Optional. Will default to the current date | [optional] 
 **pension_id** | [**String**](.md)| Optional. Used to override the default AE Pension. Only valid with states of Enrol, VoluntaryJoiner or OptIn | [optional] 
 **worker_group_id** | [**String**](.md)| Optional. Used to override the default AE Pension Workergroup. Only valid with states of Enrol, Join or OptIn. Must be provided if a pensionId is being provided. | [optional] 

### Return type

[**AeAssessment**](AeAssessment.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



