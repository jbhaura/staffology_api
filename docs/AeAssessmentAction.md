# SwaggerClient::AeAssessmentAction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action** | [**AeAction**](AeAction.md) |  | [optional] 
**employee_state** | [**AeEmployeeState**](AeEmployeeState.md) |  | [optional] 
**action_completed** | **BOOLEAN** | [readonly] Indicates whether or not the required action was successfully completed | [optional] 
**action_completed_message** | **String** | [readonly] Gives further information about the action taken or the reason if wasn&#x27;t successfully completed | [optional] 
**required_letter** | [**AeStatutoryLetter**](AeStatutoryLetter.md) |  | [optional] 
**pension_scheme_id** | **String** | [readonly] The PensionSchemeId that a completed action relates to | [optional] 
**worker_group_id** | **String** | [readonly] The WorkerGroupId that a completed action relates to | [optional] 
**letter_not_yet_sent** | **BOOLEAN** | [readonly] Indicates whether or not any required letter has been sent | [optional] 

