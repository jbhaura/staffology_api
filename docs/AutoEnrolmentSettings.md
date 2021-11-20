# SwaggerClient::AutoEnrolmentSettings

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**staging_date** | **Date** |  | [optional] 
**cyclical_reenrolment_date** | **Date** |  | [optional] 
**previous_cyclical_reenrolment_date** | **Date** |  | [optional] 
**default_pension** | [**PensionSelection**](PensionSelection.md) |  | [optional] 
**pension_same_as_default** | **BOOLEAN** |  | [optional] 
**days_to_defer_assessment** | **Integer** | The number of days, if any, to defer assessment of new employees.\\n  You&#x27;re allowed to defer assessment of new employees by up to 3 months.\\n  This is the default value used when you create a new employee. It can be changed on a per-employee basis. | [optional] 
**defer_by_months_not_days** | **BOOLEAN** | If set to true then the value in DaysToDeferAssessment will be treated as a number of months, not a number of days | [optional] 
**defer_enrolment_by** | **Integer** | The number of days )or weeks, or months), if any, to defer enrolment of employees that are Eligible Jobholders.\\n  For example, if this is set to 30 days then if an employee meets the criteria for enrolment then they&#x27;ll only be enrolled if they still meet the criteria 30 days later | [optional] 
**defer_enrolment_by_period_type** | [**DeferalPeriodType**](DeferalPeriodType.md) |  | [optional] 
**include_non_pensioned_employees_in_submission** | **BOOLEAN** | Whether or not to include details of non-pensioned employees in your submissions to this provider | [optional] 
**id** | **String** | [readonly] The unique id of the object | [optional] 

