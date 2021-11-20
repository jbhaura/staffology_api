# SwaggerClient::Employee

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | [readonly] The unique id of the object | [optional] 
**personal_details** | [**PersonalDetails**](PersonalDetails.md) |  | [optional] 
**employment_details** | [**EmploymentDetails**](EmploymentDetails.md) |  | [optional] 
**auto_enrolment** | [**AutoEnrolment**](AutoEnrolment.md) |  | [optional] 
**leave_settings** | [**LeaveSettings**](LeaveSettings.md) |  | [optional] 
**right_to_work** | [**RightToWork**](RightToWork.md) |  | [optional] 
**bank_details** | [**BankDetails**](BankDetails.md) |  | [optional] 
**tags** | **Array&lt;String&gt;** |  | [optional] 
**pay_options** | [**PayOptions**](PayOptions.md) |  | [optional] 
**status** | [**EmployeeStatus**](EmployeeStatus.md) |  | [optional] 
**ae_not_enroled_warning** | **BOOLEAN** | [readonly] If true then the employee should be enrolled in an Auto Enrolment Qualifying pension but isn&#x27;t | [optional] 
**source_system_id** | **String** | [readonly] Can only be given a value when the employee is created. It can then never be changed.\\n  Used by external systems so they can store an immutable reference | [optional] 

