# SwaggerClient::ReportsApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ae_assessments_reports**](ReportsApi.md#ae_assessments_reports) | **GET** /employers/{employerId}/reports/AeAssessments | AutoEnrolment Assessments
[**aeo_statement_reports**](ReportsApi.md#aeo_statement_reports) | **GET** /aeo/{employeeId}/{id} | AEO Statement
[**analysis_reports**](ReportsApi.md#analysis_reports) | **GET** /employers/{employerId}/reports/{taxYear}/{payPeriod}/analysis | Analysis
[**bank_payment_instructions_reports**](ReportsApi.md#bank_payment_instructions_reports) | **GET** /employers/{employerId}/reports/{taxYear}/{payPeriod}/{periodNumber}/payments/employee/credit | Bank Payment Instructions
[**cis300_reports**](ReportsApi.md#cis300_reports) | **GET** /employers/{employerId}/reports/{taxYear}/cis300/{id} | CIS300
[**cis_statement_reports**](ReportsApi.md#cis_statement_reports) | **GET** /employers/{employerId}/reports/{taxYear}/cisstatement/{taxMonth} | CIS Statement
[**cis_sub_contractor_summary_reports**](ReportsApi.md#cis_sub_contractor_summary_reports) | **GET** /employers/{employerId}/reports/cissummary | CIS Subcontractor Summary
[**cost_analysis_reports**](ReportsApi.md#cost_analysis_reports) | **GET** /employers/{employerId}/reports/{taxYear}/{payPeriod}/costanalysis | Cost Analysis
[**cost_of_employment_reports**](ReportsApi.md#cost_of_employment_reports) | **GET** /employers/{employerId}/reports/{taxYear}/{payPeriod}/costofemployment | Cost Of Employment
[**email_p45_reports**](ReportsApi.md#email_p45_reports) | **POST** /employers/{employerId}/reports/p45/email | Email P45 to Employee
[**email_p60_multiple_reports**](ReportsApi.md#email_p60_multiple_reports) | **POST** /employers/{employerId}/reports/p60/email | Email P60 to all Employees
[**email_p60_reports**](ReportsApi.md#email_p60_reports) | **POST** /employers/{employerId}/reports/p60/email/{employeeId} | Email P60 to an Employee
[**employee_export_reports**](ReportsApi.md#employee_export_reports) | **GET** /employees | Employee Export Details
[**employer_export_reports**](ReportsApi.md#employer_export_reports) | **GET** /employers/{employerId}/reports/employers | Employer Export
[**example_payslip_reports**](ReportsApi.md#example_payslip_reports) | **POST** /payslip/example/pdf | Example Payslip
[**exb_reports**](ReportsApi.md#exb_reports) | **GET** /employers/{employerId}/reports/{taxYear}/exb/{id} | EXB
[**fps_reports**](ReportsApi.md#fps_reports) | **GET** /employers/{employerId}/reports/{taxYear}/fps/{id} | FPS
[**full_summary_of_pay_reports**](ReportsApi.md#full_summary_of_pay_reports) | **GET** /employers/{employerId}/reports/{taxYear}/{payPeriod}/fullsummaryofpay | Cost Of Employment
[**furlough_report_reports**](ReportsApi.md#furlough_report_reports) | **GET** /employers/{employerId}/reports/{taxYear}/{payPeriod}/{periodNumber}/furlough | FurloughReport
[**get_pay_run_csv_reports**](ReportsApi.md#get_pay_run_csv_reports) | **GET** /employers/{employerId}/reports/{taxYear}/{payPeriod}/{periodNumber}/payruncsv | Get PayRun CSV
[**gross_to_net_reports**](ReportsApi.md#gross_to_net_reports) | **GET** /employers/{employerId}/reports/{taxYear}/{payPeriod}/gross-to-net | Gross To Net
[**holiday_reports**](ReportsApi.md#holiday_reports) | **GET** /employers/{employerId}/reports/holiday | Holiday
[**hourly_pay_reports**](ReportsApi.md#hourly_pay_reports) | **GET** /employers/{employerId}/reports/{taxYear}/{payPeriod}/hourly-pay | Hourly Pay
[**p11_d_reports**](ReportsApi.md#p11_d_reports) | **GET** /employers/{employerId}/reports/{taxYear}/p11d/{employeeId} | P11D For Employee
[**p11_detailed_multiple_reports**](ReportsApi.md#p11_detailed_multiple_reports) | **GET** /employers/{employerId}/reports/{taxYear}/p11detailed | All Detailed P11s For TaxYear
[**p11_detailed_reports**](ReportsApi.md#p11_detailed_reports) | **GET** /employers/{employerId}/reports/{taxYear}/{employeeId}/p11detailed | P11 (Detailed)
[**p11_reports**](ReportsApi.md#p11_reports) | **GET** /employers/{employerId}/reports/{taxYear}/{employeeId}/p11 | P11
[**p30_reports**](ReportsApi.md#p30_reports) | **GET** /employers/{employerId}/reports/{taxYear}/p30/{periodEnding} | P30
[**p32_reports**](ReportsApi.md#p32_reports) | **GET** /employers/{employerId}/reports/{taxYear}/p32 | P32
[**p45_reports**](ReportsApi.md#p45_reports) | **GET** /employers/{employerId}/reports/p45 | P45 For Employee
[**p60_multiple_reports**](ReportsApi.md#p60_multiple_reports) | **GET** /employers/{employerId}/reports/{taxYear}/p60 | All P60s For TaxYear
[**p60_reports**](ReportsApi.md#p60_reports) | **GET** /employers/{employerId}/reports/{taxYear}/p60/{employeeId} | P60 For Employee
[**papdis_file_reports**](ReportsApi.md#papdis_file_reports) | **GET** /employers/{employerId}/reports/{taxYear}/{payPeriod}/{periodNumber}/papdis | PAPDIS File
[**pay_run_csv_reports**](ReportsApi.md#pay_run_csv_reports) | **GET** /employers/{employerId}/reports/{taxYear}/{payPeriod}/{periodNumber}/payrun-csv | PayRun CSV (deprecated)
[**pay_run_payments_reports**](ReportsApi.md#pay_run_payments_reports) | **GET** /employers/{employerId}/reports/{taxYear}/{payPeriod}/{periodNumber}/payments/employee | PayRun Payments
[**pay_run_summary_reports**](ReportsApi.md#pay_run_summary_reports) | **GET** /employers/{employerId}/reports/{taxYear}/{payPeriod}/payrunsummary | PayRunSummary
[**payslip_reports**](ReportsApi.md#payslip_reports) | **GET** /employers/{employerId}/reports/{taxYear}/{payPeriod}/{periodNumber}/{id}/payslip | Payslip
[**payslips_reports**](ReportsApi.md#payslips_reports) | **GET** /employers/{employerId}/reports/{taxYear}/{payPeriod}/{periodNumber}/payslips | Payslips
[**right_to_work_reports**](ReportsApi.md#right_to_work_reports) | **GET** /employers/{employerId}/reports/right-to-work | RightToWork
[**statutory_pay_reports**](ReportsApi.md#statutory_pay_reports) | **GET** /employers/{employerId}/reports/{taxYear}/{payPeriod}/statutory-pay | Statutory Pay
[**umbrella_reconciliation_reports**](ReportsApi.md#umbrella_reconciliation_reports) | **GET** /employers/{employerId}/reports/{taxYear}/{payPeriod}/umbrella-reconciliation | Umbrella Reconciliation
[**variance_report_reports**](ReportsApi.md#variance_report_reports) | **GET** /employers/{employerId}/reports/{taxYear}/{payPeriod}/variance | Variance Report

# **ae_assessments_reports**
> ItemListReportResponse ae_assessments_reports(employer_id, opts)

AutoEnrolment Assessments

Returns a list of Items representing your current Employees along with their most recent Auto Enrolment Assessment in the metadata field.

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  accept: 'accept_example' # String | 
}

begin
  #AutoEnrolment Assessments
  result = api_instance.ae_assessments_reports(employer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->ae_assessments_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **accept** | **String**|  | [optional] 

### Return type

[**ItemListReportResponse**](ItemListReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv



# **aeo_statement_reports**
> AttachmentOrderReportResponse aeo_statement_reports(employee_id, id, opts)

AEO Statement

Returns a statement for an Attachment Order, listing payments that have been made.

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

api_instance = SwaggerClient::ReportsApi.new
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the AttachmentOrder
opts = { 
  employer_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | 
  accept: 'accept_example' # String | 
}

begin
  #AEO Statement
  result = api_instance.aeo_statement_reports(employee_id, id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->aeo_statement_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)| The id of the AttachmentOrder | 
 **employer_id** | [**String**](.md)|  | [optional] 
 **accept** | **String**|  | [optional] 

### Return type

[**AttachmentOrderReportResponse**](AttachmentOrderReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv, text/html, application/pdf



# **analysis_reports**
> AnalysisReportReportResponse analysis_reports(employer_id, pay_period, tax_year, opts)

Analysis

Returns an AnalysisReport for one or multiple periods.

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  from_period: 56, # Integer | 
  to_period: 56, # Integer | 
  accept: 'accept_example', # String | 
  ordinal: 1, # Integer | 
  dept_code: 'dept_code_example' # String | If specified then only employees assigned to this department code at the time of the payrun will be included
}

begin
  #Analysis
  result = api_instance.analysis_reports(employer_id, pay_period, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->analysis_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **from_period** | **Integer**|  | [optional] 
 **to_period** | **Integer**|  | [optional] 
 **accept** | **String**|  | [optional] 
 **ordinal** | **Integer**|  | [optional] [default to 1]
 **dept_code** | **String**| If specified then only employees assigned to this department code at the time of the payrun will be included | [optional] 

### Return type

[**AnalysisReportReportResponse**](AnalysisReportReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv



# **bank_payment_instructions_reports**
> BankPaymentInstructionReportResponse bank_payment_instructions_reports(employer_id, pay_period, period_number, tax_year, opts)

Bank Payment Instructions

Returns a list of bank payments that need to be made to employees as a result of a Payrun.\\n  You can optionally provide a PaymentDate and only payments for that date will be returned.

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
period_number = 56 # Integer | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  accept: 'accept_example', # String | 
  payment_date: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 
  ordinal: 1, # Integer | 
  inc_pensions: false, # BOOLEAN | Set to true and we'll include any payment due to Pension Providers
  inc_hmrc: false # BOOLEAN | Set to true and we'll include any payment due to HMRC
}

begin
  #Bank Payment Instructions
  result = api_instance.bank_payment_instructions_reports(employer_id, pay_period, period_number, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->bank_payment_instructions_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **period_number** | **Integer**|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **accept** | **String**|  | [optional] 
 **payment_date** | **DateTime**|  | [optional] 
 **ordinal** | **Integer**|  | [optional] [default to 1]
 **inc_pensions** | **BOOLEAN**| Set to true and we&#x27;ll include any payment due to Pension Providers | [optional] [default to false]
 **inc_hmrc** | **BOOLEAN**| Set to true and we&#x27;ll include any payment due to HMRC | [optional] [default to false]

### Return type

[**BankPaymentInstructionReportResponse**](BankPaymentInstructionReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv



# **cis300_reports**
> Cis300ReportResponse cis300_reports(employer_id, tax_year, id, opts)

CIS300

Returns a CIS300 as a CSV or human-readable report

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of CIS300.
opts = { 
  accept: 'accept_example' # String | 
}

begin
  #CIS300
  result = api_instance.cis300_reports(employer_id, tax_year, id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->cis300_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **id** | [**String**](.md)| The Id of CIS300. | 
 **accept** | **String**|  | [optional] 

### Return type

[**Cis300ReportResponse**](Cis300ReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/pdf, text/csv, text/html



# **cis_statement_reports**
> CisStatementListReportResponse cis_statement_reports(employer_id, tax_year, tax_month, opts)

CIS Statement

Returns a CIS Statement for the employee specified.

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
tax_month = 56 # Integer | 
opts = { 
  employee_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | Specify an employeeId to get a single statement.\\nIf you don't provide a value then all Subcontractors will be included.
  accept: 'accept_example' # String | 
}

begin
  #CIS Statement
  result = api_instance.cis_statement_reports(employer_id, tax_year, tax_month, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->cis_statement_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **tax_month** | **Integer**|  | 
 **employee_id** | [**String**](.md)| Specify an employeeId to get a single statement.\\nIf you don&#x27;t provide a value then all Subcontractors will be included. | [optional] 
 **accept** | **String**|  | [optional] 

### Return type

[**CisStatementListReportResponse**](CisStatementListReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, application/json



# **cis_sub_contractor_summary_reports**
> CisSubContractorSummaryListReportResponse cis_sub_contractor_summary_reports(employer_id, opts)

CIS Subcontractor Summary

Returns a list of all CIS Subcontractors along with verification details

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  accept: 'accept_example' # String | 
}

begin
  #CIS Subcontractor Summary
  result = api_instance.cis_sub_contractor_summary_reports(employer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->cis_sub_contractor_summary_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **accept** | **String**|  | [optional] 

### Return type

[**CisSubContractorSummaryListReportResponse**](CisSubContractorSummaryListReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, text/html, text/csv, application/json



# **cost_analysis_reports**
> CostAnalysisReportReportResponse cost_analysis_reports(employer_id, pay_period, tax_year, opts)

Cost Analysis

Returns a report analysing the costs of a payrun or range of payruns.

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  from_period: 56, # Integer | 
  to_period: 56, # Integer | 
  accept: 'accept_example', # String | 
  ordinal: 1 # Integer | 
}

begin
  #Cost Analysis
  result = api_instance.cost_analysis_reports(employer_id, pay_period, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->cost_analysis_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **from_period** | **Integer**|  | [optional] 
 **to_period** | **Integer**|  | [optional] 
 **accept** | **String**|  | [optional] 
 **ordinal** | **Integer**|  | [optional] [default to 1]

### Return type

[**CostAnalysisReportReportResponse**](CostAnalysisReportReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/html, application/pdf



# **cost_of_employment_reports**
> CostOfEmploymentReportReportResponse cost_of_employment_reports(employer_id, pay_period, tax_year, opts)

Cost Of Employment

Returns a report detailing the employment cost per employee for a payrun or range of payruns.

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  from_period: 56, # Integer | 
  to_period: 56, # Integer | 
  accept: 'accept_example', # String | 
  ordinal: 1 # Integer | 
}

begin
  #Cost Of Employment
  result = api_instance.cost_of_employment_reports(employer_id, pay_period, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->cost_of_employment_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **from_period** | **Integer**|  | [optional] 
 **to_period** | **Integer**|  | [optional] 
 **accept** | **String**|  | [optional] 
 **ordinal** | **Integer**|  | [optional] [default to 1]

### Return type

[**CostOfEmploymentReportReportResponse**](CostOfEmploymentReportReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/html, application/pdf



# **email_p45_reports**
> email_p45_reports(employer_id, opts)

Email P45 to Employee

Email a P45 to an Employee you've marked as a leaver

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer.
opts = { 
  employee_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employee you want the email a P45 to.
}

begin
  #Email P45 to Employee
  api_instance.email_p45_reports(employer_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->email_p45_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer. | 
 **employee_id** | [**String**](.md)| The Id of the Employee you want the email a P45 to. | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **email_p60_multiple_reports**
> email_p60_multiple_reports(employer_id, opts)

Email P60 to all Employees

Email P60 to all Employee

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer.
opts = { 
  tax_year: SwaggerClient::TaxYear.new # TaxYear | The TaxYear you want P60s for.
}

begin
  #Email P60 to all Employees
  api_instance.email_p60_multiple_reports(employer_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->email_p60_multiple_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer. | 
 **tax_year** | [**TaxYear**](.md)| The TaxYear you want P60s for. | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **email_p60_reports**
> email_p60_reports(employer_id, employee_id, opts)

Email P60 to an Employee

Email a P60 to an Employee

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer.
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employee you want the email a P60 to.
opts = { 
  tax_year: SwaggerClient::TaxYear.new # TaxYear | The TaxYear you want P60s for.
}

begin
  #Email P60 to an Employee
  api_instance.email_p60_reports(employer_id, employee_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->email_p60_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer. | 
 **employee_id** | [**String**](.md)| The Id of the Employee you want the email a P60 to. | 
 **tax_year** | [**TaxYear**](.md)| The TaxYear you want P60s for. | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **employee_export_reports**
> ReportResponse employee_export_reports(opts)

Employee Export Details

Returns a CSV file containing details for all Employees.

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

api_instance = SwaggerClient::ReportsApi.new
opts = { 
  employer_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | 
  tax_year: SwaggerClient::TaxYear.new, # TaxYear | 
  include_bank_account_details: true, # BOOLEAN | 
  include_ytd: true, # BOOLEAN | 
  inc_pension_info: true, # BOOLEAN | 
  include_pay_info: true, # BOOLEAN | 
  include_notes: true, # BOOLEAN | 
  accept: 'accept_example' # String | 
}

begin
  #Employee Export Details
  result = api_instance.employee_export_reports(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->employee_export_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | [optional] 
 **tax_year** | [**TaxYear**](.md)|  | [optional] 
 **include_bank_account_details** | **BOOLEAN**|  | [optional] 
 **include_ytd** | **BOOLEAN**|  | [optional] 
 **inc_pension_info** | **BOOLEAN**|  | [optional] 
 **include_pay_info** | **BOOLEAN**|  | [optional] 
 **include_notes** | **BOOLEAN**|  | [optional] 
 **accept** | **String**|  | [optional] 

### Return type

[**ReportResponse**](ReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv



# **employer_export_reports**
> ReportResponse employer_export_reports(employer_id, opts)

Employer Export

Returns a CSV file containing details for all Employers.

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of any employer to which you have access. It wont affect the report results.
opts = { 
  accept: 'accept_example' # String | 
}

begin
  #Employer Export
  result = api_instance.employer_export_reports(employer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->employer_export_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of any employer to which you have access. It wont affect the report results. | 
 **accept** | **String**|  | [optional] 

### Return type

[**ReportResponse**](ReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv



# **example_payslip_reports**
> ReportResponse example_payslip_reports(opts)

Example Payslip

Use this operation to test your PayslipCustomisation.\\n  We'll use dummy date and create a Payslip PDF or HTML document based on the customisation that you submit

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

api_instance = SwaggerClient::ReportsApi.new
opts = { 
  body: SwaggerClient::PayslipCustomisation.new # PayslipCustomisation | Your PayslipCustomisation.
  accept: 'accept_example' # String | 
  employer_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
}

begin
  #Example Payslip
  result = api_instance.example_payslip_reports(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->example_payslip_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PayslipCustomisation**](PayslipCustomisation.md)| Your PayslipCustomisation. | [optional] 
 **accept** | **String**|  | [optional] 
 **employer_id** | [**String**](.md)|  | [optional] 

### Return type

[**ReportResponse**](ReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json, application/pdf, text/html



# **exb_reports**
> ExbReportResponse exb_reports(employer_id, tax_year, id, opts)

EXB

Returns an EXB as a CSV file

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of EXB.
opts = { 
  accept: 'accept_example' # String | 
}

begin
  #EXB
  result = api_instance.exb_reports(employer_id, tax_year, id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->exb_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **id** | [**String**](.md)| The Id of EXB. | 
 **accept** | **String**|  | [optional] 

### Return type

[**ExbReportResponse**](ExbReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv



# **fps_reports**
> FpsReportResponse fps_reports(employer_id, tax_year, id, opts)

FPS

Returns an FPS as a CSV file

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of FPS.
opts = { 
  inc_all_employees: true, # BOOLEAN | If true, then any employees that were paid earlier in the year but not on this FPS will also be included
  accept: 'accept_example' # String | 
}

begin
  #FPS
  result = api_instance.fps_reports(employer_id, tax_year, id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->fps_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **id** | [**String**](.md)| The Id of FPS. | 
 **inc_all_employees** | **BOOLEAN**| If true, then any employees that were paid earlier in the year but not on this FPS will also be included | [optional] 
 **accept** | **String**|  | [optional] 

### Return type

[**FpsReportResponse**](FpsReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv



# **full_summary_of_pay_reports**
> FullSummaryOfPayReportReportResponse full_summary_of_pay_reports(employer_id, pay_period, tax_year, opts)

Cost Of Employment

Returns a report detailing the employment cost per employee for a payrun or range of payruns.

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  period: 56, # Integer | 
  accept: 'accept_example', # String | 
  ordinal: 1 # Integer | 
}

begin
  #Cost Of Employment
  result = api_instance.full_summary_of_pay_reports(employer_id, pay_period, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->full_summary_of_pay_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **period** | **Integer**|  | [optional] 
 **accept** | **String**|  | [optional] 
 **ordinal** | **Integer**|  | [optional] [default to 1]

### Return type

[**FullSummaryOfPayReportReportResponse**](FullSummaryOfPayReportReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/html, application/pdf



# **furlough_report_reports**
> FurloughReportReportResponse furlough_report_reports(employer_id, pay_period, tax_year, period_number, opts)

FurloughReport

Returns a Furlough Report.

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
period_number = 56 # Integer | 
opts = { 
  accept: 'accept_example', # String | 
  ordinal: 1 # Integer | 
}

begin
  #FurloughReport
  result = api_instance.furlough_report_reports(employer_id, pay_period, tax_year, period_number, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->furlough_report_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **period_number** | **Integer**|  | 
 **accept** | **String**|  | [optional] 
 **ordinal** | **Integer**|  | [optional] [default to 1]

### Return type

[**FurloughReportReportResponse**](FurloughReportReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv, text/html, application/pdf



# **get_pay_run_csv_reports**
> ReportResponse get_pay_run_csv_reports(employer_id, tax_year, pay_period, period_number, opts)

Get PayRun CSV

Download the lines of a PayRun to a CSV file.\\n

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
period_number = 56 # Integer | 
opts = { 
  ordinal: 1, # Integer | 
  csv_type: SwaggerClient::PayRunCsvType.new, # PayRunCsvType | Choose the type of CSV you want to generate
  mapping_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | If you provide the id of a PaymentCsvMapping that is column based then we'll return the CSV formatted accordingly
  accept: 'application/json' # String | 
}

begin
  #Get PayRun CSV
  result = api_instance.get_pay_run_csv_reports(employer_id, tax_year, pay_period, period_number, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->get_pay_run_csv_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **period_number** | **Integer**|  | 
 **ordinal** | **Integer**|  | [optional] [default to 1]
 **csv_type** | [**PayRunCsvType**](.md)| Choose the type of CSV you want to generate | [optional] 
 **mapping_id** | [**String**](.md)| If you provide the id of a PaymentCsvMapping that is column based then we&#x27;ll return the CSV formatted accordingly | [optional] 
 **accept** | **String**|  | [optional] [default to application/json]

### Return type

[**ReportResponse**](ReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv



# **gross_to_net_reports**
> GrossToNetReportReportResponse gross_to_net_reports(employer_id, pay_period, tax_year, opts)

Gross To Net

Returns a report comparing employees' gross pay with their net pay for one or more pay periods.

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  from_period: 56, # Integer | 
  to_period: 56, # Integer | 
  accept: 'accept_example', # String | 
  ordinal: 1, # Integer | 
  for_cis: false # BOOLEAN | If true then CIS Subcontractors are reported on.\\nIf all your employees are CIS Subcontractors then this will default to true, otherwise it defaults to false
}

begin
  #Gross To Net
  result = api_instance.gross_to_net_reports(employer_id, pay_period, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->gross_to_net_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **from_period** | **Integer**|  | [optional] 
 **to_period** | **Integer**|  | [optional] 
 **accept** | **String**|  | [optional] 
 **ordinal** | **Integer**|  | [optional] [default to 1]
 **for_cis** | **BOOLEAN**| If true then CIS Subcontractors are reported on.\\nIf all your employees are CIS Subcontractors then this will default to true, otherwise it defaults to false | [optional] [default to false]

### Return type

[**GrossToNetReportReportResponse**](GrossToNetReportReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv, text/html, application/pdf



# **holiday_reports**
> HolidayReportReportResponse holiday_reports(employer_id, opts)

Holiday

Returns a report summarising holiday usage for all employees.

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  accept: 'accept_example', # String | 
  accruals: false # BOOLEAN | If set to true then you'll receive a report for holiday pay accruals instead of holiday allowances. Defaults to false.
}

begin
  #Holiday
  result = api_instance.holiday_reports(employer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->holiday_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **accept** | **String**|  | [optional] 
 **accruals** | **BOOLEAN**| If set to true then you&#x27;ll receive a report for holiday pay accruals instead of holiday allowances. Defaults to false. | [optional] [default to false]

### Return type

[**HolidayReportReportResponse**](HolidayReportReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv, text/html, application/pdf



# **hourly_pay_reports**
> HourlyPayReportReportResponse hourly_pay_reports(employer_id, pay_period, tax_year, opts)

Hourly Pay

Returns a report summarising the hourly pay for employees for one or more pay periods.

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  from_period: 56, # Integer | 
  to_period: 56, # Integer | 
  accept: 'accept_example', # String | 
  ordinal: 1 # Integer | 
}

begin
  #Hourly Pay
  result = api_instance.hourly_pay_reports(employer_id, pay_period, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->hourly_pay_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **from_period** | **Integer**|  | [optional] 
 **to_period** | **Integer**|  | [optional] 
 **accept** | **String**|  | [optional] 
 **ordinal** | **Integer**|  | [optional] [default to 1]

### Return type

[**HourlyPayReportReportResponse**](HourlyPayReportReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv, text/html, application/pdf



# **p11_d_reports**
> ReportResponse p11_d_reports(employer_id, employee_id, tax_year, opts)

P11D For Employee

Gets a P11D in PDF format for the TaxYear and Employee specified. A URL is returned which points to the PDF file.

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer.
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employee.
tax_year = SwaggerClient::TaxYear.new # TaxYear | The TaxYear the P60 is for.
opts = { 
  accept: 'accept_example' # String | 
}

begin
  #P11D For Employee
  result = api_instance.p11_d_reports(employer_id, employee_id, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->p11_d_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer. | 
 **employee_id** | [**String**](.md)| The Id of the Employee. | 
 **tax_year** | [**TaxYear**](.md)| The TaxYear the P60 is for. | 
 **accept** | **String**|  | [optional] 

### Return type

[**ReportResponse**](ReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/pdf, text/html



# **p11_detailed_multiple_reports**
> ReportResponse p11_detailed_multiple_reports(employer_id, tax_year, opts)

All Detailed P11s For TaxYear

Returns all detailed P11s in a single PDF file for the TaxYear and Employer specified\\n  If you set the accept header to \"text/html\" then unlike other reports the html is NOT in the <code>Content</code> field.  As there are multiple HTML documents they are encoded as a JSON array of strings in the <code>Model</code> field.

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the employer you want to report on
tax_year = SwaggerClient::TaxYear.new # TaxYear | The tax year you want to report on.
opts = { 
  accept: 'accept_example' # String | 
}

begin
  #All Detailed P11s For TaxYear
  result = api_instance.p11_detailed_multiple_reports(employer_id, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->p11_detailed_multiple_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the employer you want to report on | 
 **tax_year** | [**TaxYear**](.md)| The tax year you want to report on. | 
 **accept** | **String**|  | [optional] 

### Return type

[**ReportResponse**](ReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/pdf, text/html



# **p11_detailed_reports**
> P11DetailedReportResponse p11_detailed_reports(employer_id, employee_id, tax_year, opts)

P11 (Detailed)

Returns a detailed P11 Report for the given employee.

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The employee Id of the employee you want to report on
tax_year = SwaggerClient::TaxYear.new # TaxYear | The tax year you want to report on.
opts = { 
  accept: 'accept_example' # String | 
}

begin
  #P11 (Detailed)
  result = api_instance.p11_detailed_reports(employer_id, employee_id, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->p11_detailed_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **employee_id** | [**String**](.md)| The employee Id of the employee you want to report on | 
 **tax_year** | [**TaxYear**](.md)| The tax year you want to report on. | 
 **accept** | **String**|  | [optional] 

### Return type

[**P11DetailedReportResponse**](P11DetailedReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, application/json, text/html



# **p11_reports**
> P11ReportResponse p11_reports(employer_id, employee_id, tax_year, opts)

P11

Returns a P11 Report, detailing all payments and deductions for the given employee

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The employee Id of the employee you want to report on
tax_year = SwaggerClient::TaxYear.new # TaxYear | The tax year you want to report on.
opts = { 
  accept: 'accept_example' # String | 
}

begin
  #P11
  result = api_instance.p11_reports(employer_id, employee_id, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->p11_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **employee_id** | [**String**](.md)| The employee Id of the employee you want to report on | 
 **tax_year** | [**TaxYear**](.md)| The tax year you want to report on. | 
 **accept** | **String**|  | [optional] 

### Return type

[**P11ReportResponse**](P11ReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, application/json, text/csv, text/html



# **p30_reports**
> ReportResponse p30_reports(employer_id, tax_year, period_ending, opts)

P30

Returns a P30 Report summarising the employers HMRC liabilities for the period.\\n  For available periods retrieve a list of HmrcLiability and examine the metadata.\\n  If the accept header is set to \"text/csv\" then the periodEnding parameter is ignored and you'll receive a CSV for the entire TaxYear.

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
period_ending = DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | 
opts = { 
  accept: 'accept_example' # String | 
}

begin
  #P30
  result = api_instance.p30_reports(employer_id, tax_year, period_ending, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->p30_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **period_ending** | **DateTime**|  | 
 **accept** | **String**|  | [optional] 

### Return type

[**ReportResponse**](ReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/pdf, text/csv, text/html



# **p32_reports**
> P32ReportResponse p32_reports(employer_id, tax_year, opts)

P32

Returns a P32 Report detailing the employers HMRC liabilities for the year.\\n

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  accept: 'accept_example' # String | 
}

begin
  #P32
  result = api_instance.p32_reports(employer_id, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->p32_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **accept** | **String**|  | [optional] 

### Return type

[**P32ReportResponse**](P32ReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/html, application/pdf



# **p45_reports**
> ReportResponse p45_reports(employer_id, opts)

P45 For Employee

Get a P45 for an Employee you've marked as a leaver

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer.
opts = { 
  employee_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | The Id of the Employee you want a P45 for.
  accept: 'accept_example' # String | 
}

begin
  #P45 For Employee
  result = api_instance.p45_reports(employer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->p45_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer. | 
 **employee_id** | [**String**](.md)| The Id of the Employee you want a P45 for. | [optional] 
 **accept** | **String**|  | [optional] 

### Return type

[**ReportResponse**](ReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/pdf, text/html



# **p60_multiple_reports**
> ReportResponse p60_multiple_reports(employer_id, tax_year, opts)

All P60s For TaxYear

Returns all P60s in a single PDF file for the TaxYear and Employer specified\\n  If you set the accept header to \"text/html\" then unlike other reports the html is NOT in the <code>Content</code> field.  As there are multiple HTML documents they are encoded as a JSON array of strings in the <code>Model</code> field.

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer.
tax_year = SwaggerClient::TaxYear.new # TaxYear | The TaxYear you want P60s for.
opts = { 
  accept: 'accept_example' # String | 
}

begin
  #All P60s For TaxYear
  result = api_instance.p60_multiple_reports(employer_id, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->p60_multiple_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer. | 
 **tax_year** | [**TaxYear**](.md)| The TaxYear you want P60s for. | 
 **accept** | **String**|  | [optional] 

### Return type

[**ReportResponse**](ReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/pdf, text/html



# **p60_reports**
> ReportResponse p60_reports(employer_id, employee_id, tax_year, opts)

P60 For Employee

Gets a P60 in PDF format for the TaxYear and Employee specified. A URL is returned which points to the PDF file.

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer.
employee_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employee.
tax_year = SwaggerClient::TaxYear.new # TaxYear | The TaxYear the P60 is for.
opts = { 
  accept: 'accept_example' # String | 
}

begin
  #P60 For Employee
  result = api_instance.p60_reports(employer_id, employee_id, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->p60_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer. | 
 **employee_id** | [**String**](.md)| The Id of the Employee. | 
 **tax_year** | [**TaxYear**](.md)| The TaxYear the P60 is for. | 
 **accept** | **String**|  | [optional] 

### Return type

[**ReportResponse**](ReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/pdf, text/html



# **papdis_file_reports**
> PapdisDocumentReportResponse papdis_file_reports(employer_id, pay_period, period_number, tax_year, opts)

PAPDIS File

Returns a PAPDIS compliant file for the PayRun and Pension Provider PAPDIS Id specified

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
period_number = 56 # Integer | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  scheme_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | The Id of the Pension Scheme you want a file for.
  accept: 'accept_example', # String | 
  ordinal: 1 # Integer | 
}

begin
  #PAPDIS File
  result = api_instance.papdis_file_reports(employer_id, pay_period, period_number, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->papdis_file_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **period_number** | **Integer**|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **scheme_id** | [**String**](.md)| The Id of the Pension Scheme you want a file for. | [optional] 
 **accept** | **String**|  | [optional] 
 **ordinal** | **Integer**|  | [optional] [default to 1]

### Return type

[**PapdisDocumentReportResponse**](PapdisDocumentReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, application/json, text/csv, text/xml, text/html



# **pay_run_csv_reports**
> ReportResponse pay_run_csv_reports(employer_id, pay_period, period_number, tax_year, opts)

PayRun CSV (deprecated)

Download the lines of a PayRun to a CSV file.\\n  Please use Get PayRun CSV that now accepts a parameter for CSV type

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
period_number = 56 # Integer | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  accept: 'accept_example', # String | 
  ordinal: 1, # Integer | 
  summary: false # BOOLEAN | If set to true then instead of a line-by-line CSV, you'll receive a summary for each employee
}

begin
  #PayRun CSV (deprecated)
  result = api_instance.pay_run_csv_reports(employer_id, pay_period, period_number, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->pay_run_csv_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **period_number** | **Integer**|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **accept** | **String**|  | [optional] 
 **ordinal** | **Integer**|  | [optional] [default to 1]
 **summary** | **BOOLEAN**| If set to true then instead of a line-by-line CSV, you&#x27;ll receive a summary for each employee | [optional] [default to false]

### Return type

[**ReportResponse**](ReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv



# **pay_run_payments_reports**
> PayrunPaymentsReportReportResponse pay_run_payments_reports(employer_id, pay_period, period_number, tax_year, opts)

PayRun Payments

Returns a list of all employee payments that need to be made as a result of a Payrun.\\n  If you specifically want just bank payments (employees where PayMethod is Credit) then you  may find the Bank Payment Instructions API call more useful

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
period_number = 56 # Integer | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  accept: 'accept_example', # String | 
  ordinal: 1, # Integer | 
  include_non_employee_payments: false # BOOLEAN | If set to true then we'll also include payments that need to be made to HMRC and PensionProviders
}

begin
  #PayRun Payments
  result = api_instance.pay_run_payments_reports(employer_id, pay_period, period_number, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->pay_run_payments_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **period_number** | **Integer**|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **accept** | **String**|  | [optional] 
 **ordinal** | **Integer**|  | [optional] [default to 1]
 **include_non_employee_payments** | **BOOLEAN**| If set to true then we&#x27;ll also include payments that need to be made to HMRC and PensionProviders | [optional] [default to false]

### Return type

[**PayrunPaymentsReportReportResponse**](PayrunPaymentsReportReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv, text/html, application/pdf



# **pay_run_summary_reports**
> PayRunSummaryLineIEnumerableReportResponse pay_run_summary_reports(employer_id, pay_period, tax_year, opts)

PayRunSummary

Returns an array of PayRunSummaryLine for one or multiple periods. Similar to a PayRunJournal except that it can cover multiple periods.

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  from_period: 56, # Integer | 
  to_period: 56, # Integer | 
  accept: 'accept_example', # String | 
  ordinal: 1, # Integer | 
  dept_code: 'dept_code_example' # String | If specified then only employees assigned to this department code at the time of the payrun will be included
}

begin
  #PayRunSummary
  result = api_instance.pay_run_summary_reports(employer_id, pay_period, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->pay_run_summary_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **from_period** | **Integer**|  | [optional] 
 **to_period** | **Integer**|  | [optional] 
 **accept** | **String**|  | [optional] 
 **ordinal** | **Integer**|  | [optional] [default to 1]
 **dept_code** | **String**| If specified then only employees assigned to this department code at the time of the payrun will be included | [optional] 

### Return type

[**PayRunSummaryLineIEnumerableReportResponse**](PayRunSummaryLineIEnumerableReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv



# **payslip_reports**
> PayslipReportResponse payslip_reports(employer_id, pay_period, period_number, tax_year, id, opts)

Payslip

Returns a single Payslip for the given PayRunEntry of a PayRun. The type of response depends on the accept header.

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
period_number = 56 # Integer | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  accept: 'accept_example', # String | 
  ordinal: 1 # Integer | 
}

begin
  #Payslip
  result = api_instance.payslip_reports(employer_id, pay_period, period_number, tax_year, id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->payslip_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **period_number** | **Integer**|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **id** | [**String**](.md)|  | 
 **accept** | **String**|  | [optional] 
 **ordinal** | **Integer**|  | [optional] [default to 1]

### Return type

[**PayslipReportResponse**](PayslipReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, application/json, text/html



# **payslips_reports**
> ReportResponse payslips_reports(employer_id, pay_period, period_number, tax_year, opts)

Payslips

Returns a all Payslips for the given PayRun  If you set the accept header to \"text/html\" then unlike other reports the html is NOT in the <code>Content</code> field.  As there are multiple HTML documents they are encoded as a JSON array of strings in the <code>Model</code> field.

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
period_number = 56 # Integer | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  accept: 'accept_example', # String | 
  ordinal: 1, # Integer | 
  unemailed: false # BOOLEAN | Set this to True if you only want the Payslips that haven't been sent by email
}

begin
  #Payslips
  result = api_instance.payslips_reports(employer_id, pay_period, period_number, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->payslips_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **period_number** | **Integer**|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **accept** | **String**|  | [optional] 
 **ordinal** | **Integer**|  | [optional] [default to 1]
 **unemailed** | **BOOLEAN**| Set this to True if you only want the Payslips that haven&#x27;t been sent by email | [optional] [default to false]

### Return type

[**ReportResponse**](ReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **right_to_work_reports**
> RightToWorkReportReportResponse right_to_work_reports(employer_id, opts)

RightToWork

Returns a report summarising RightToWork information for all employees.

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  accept: 'accept_example' # String | 
}

begin
  #RightToWork
  result = api_instance.right_to_work_reports(employer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->right_to_work_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **accept** | **String**|  | [optional] 

### Return type

[**RightToWorkReportReportResponse**](RightToWorkReportReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv, text/html, application/pdf



# **statutory_pay_reports**
> StatutoryPayReportReportResponse statutory_pay_reports(employer_id, pay_period, tax_year, opts)

Statutory Pay

Returns a report detailing statutory pay for one or more pay periods.

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  from_period: 56, # Integer | 
  to_period: 56, # Integer | 
  accept: 'accept_example', # String | 
  ordinal: 1 # Integer | 
}

begin
  #Statutory Pay
  result = api_instance.statutory_pay_reports(employer_id, pay_period, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->statutory_pay_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **from_period** | **Integer**|  | [optional] 
 **to_period** | **Integer**|  | [optional] 
 **accept** | **String**|  | [optional] 
 **ordinal** | **Integer**|  | [optional] [default to 1]

### Return type

[**StatutoryPayReportReportResponse**](StatutoryPayReportReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv, text/html, application/pdf



# **umbrella_reconciliation_reports**
> UmbrellaReconciliationReportReportResponse umbrella_reconciliation_reports(employer_id, pay_period, tax_year, opts)

Umbrella Reconciliation

Returns an Umbrella Reconciliation report.

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  from_period: 56, # Integer | 
  to_period: 56, # Integer | 
  accept: 'accept_example', # String | 
  ordinal: 1, # Integer | 
  employee_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Specify an employee id to report on just that employee, otherwise all employees will be included.
}

begin
  #Umbrella Reconciliation
  result = api_instance.umbrella_reconciliation_reports(employer_id, pay_period, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->umbrella_reconciliation_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **from_period** | **Integer**|  | [optional] 
 **to_period** | **Integer**|  | [optional] 
 **accept** | **String**|  | [optional] 
 **ordinal** | **Integer**|  | [optional] [default to 1]
 **employee_id** | [**String**](.md)| Specify an employee id to report on just that employee, otherwise all employees will be included. | [optional] 

### Return type

[**UmbrellaReconciliationReportReportResponse**](UmbrellaReconciliationReportReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv, text/html, application/pdf



# **variance_report_reports**
> VarianceReportReportResponse variance_report_reports(employer_id, pay_period, tax_year, opts)

Variance Report

Returns a report comparing two pay periods or two ranges of payperiods.

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

api_instance = SwaggerClient::ReportsApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pay_period = SwaggerClient::PayPeriods.new # PayPeriods | 
tax_year = SwaggerClient::TaxYear.new # TaxYear | 
opts = { 
  ordinal: 56, # Integer | 
  from_period: 56, # Integer | 
  to_period: 56, # Integer | 
  pay_period_compare: SwaggerClient::PayPeriods.new, # PayPeriods | 
  ordinal_compare: 56, # Integer | 
  tax_year_compare: SwaggerClient::TaxYear.new, # TaxYear | 
  from_period_compare: 56, # Integer | 
  to_period_compare: 56, # Integer | 
  show_percentage: true, # BOOLEAN | If true then any variations will be shown as a percentage.
  min_change: 1.2, # Float | Set a threshold for reporting variance. Ie, provide 0.10 and any variance below 10% will be ignored
  accept: 'accept_example' # String | 
}

begin
  #Variance Report
  result = api_instance.variance_report_reports(employer_id, pay_period, tax_year, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportsApi->variance_report_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **pay_period** | [**PayPeriods**](.md)|  | 
 **tax_year** | [**TaxYear**](.md)|  | 
 **ordinal** | **Integer**|  | [optional] 
 **from_period** | **Integer**|  | [optional] 
 **to_period** | **Integer**|  | [optional] 
 **pay_period_compare** | [**PayPeriods**](.md)|  | [optional] 
 **ordinal_compare** | **Integer**|  | [optional] 
 **tax_year_compare** | [**TaxYear**](.md)|  | [optional] 
 **from_period_compare** | **Integer**|  | [optional] 
 **to_period_compare** | **Integer**|  | [optional] 
 **show_percentage** | **BOOLEAN**| If true then any variations will be shown as a percentage. | [optional] 
 **min_change** | **Float**| Set a threshold for reporting variance. Ie, provide 0.10 and any variance below 10% will be ignored | [optional] 
 **accept** | **String**|  | [optional] 

### Return type

[**VarianceReportReportResponse**](VarianceReportReportResponse.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv, text/html, application/pdf



