# SwaggerClient::AutoEnrolment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**state** | [**AeEmployeeState**](AeEmployeeState.md) |  | [optional] 
**state_date** | **Date** | [readonly] | [optional] 
**uk_worker** | [**AeUKWorker**](AeUKWorker.md) |  | [optional] 
**days_to_defer_assessment** | **Integer** | The number of days, if any, to defer assessment of this employee.\\n  You&#x27;re allowed to defer assessment of new employees by up to 3 months.\\n | [optional] 
**postponement_date** | **Date** | [readonly] If a value is present, then employee wont be enrolled on an AE Pension until after this date.  This is automatically set to a date if the employee is deemed to be an EligibleJobHolder, but the employer has set a Postponement period and this value is currently null  This is automatically set to null if it already has a value and the employee is deemed NOT to be an EligibleJobHolder - ie, they previously qualified but now do not. | [optional] 
**defer_by_months_not_days** | **BOOLEAN** | If set to true then the value in DaysToDeferAssessment will be treated as a number of months, not a number of days | [optional] 
**exempt** | **BOOLEAN** |  | [optional] 
**ae_exclusion_code** | [**AeExclusionCode**](AeExclusionCode.md) |  | [optional] 
**ae_postponement_letter_sent** | **BOOLEAN** |  | [optional] 
**last_assessment** | [**AeAssessment**](AeAssessment.md) |  | [optional] 

