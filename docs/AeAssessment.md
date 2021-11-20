# SwaggerClient::AeAssessment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**assessment_date** | **DateTime** |  | [optional] 
**employee_state** | [**AeEmployeeState**](AeEmployeeState.md) |  | [optional] 
**age** | **Integer** | [readonly] The age of the Employee at the time of the assessment | [optional] 
**uk_worker** | [**AeUKWorker**](AeUKWorker.md) |  | [optional] 
**pay_period** | [**PayPeriods**](PayPeriods.md) |  | [optional] 
**ordinal** | **Integer** | [readonly] The PaySchedule ordinal for the Employee at the time of the assessment | [optional] 
**earnings_in_period** | **Float** | [readonly] | [optional] 
**qualifying_earnings_in_period** | **Float** | [readonly] | [optional] 
**ae_exclusion_code** | [**AeExclusionCode**](AeExclusionCode.md) |  | [optional] 
**status** | [**AeStatus**](AeStatus.md) |  | [optional] 
**reason** | **String** | [readonly] The reason for determining the Status given. | [optional] 
**action** | [**AeAssessmentAction**](AeAssessmentAction.md) |  | [optional] 
**employee** | [**Item**](Item.md) |  | [optional] 
**id** | **String** | [readonly] The unique id of the object | [optional] 

