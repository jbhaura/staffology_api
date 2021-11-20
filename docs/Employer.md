# SwaggerClient::Employer

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | 
**crn** | **String** | Company Registration Number | [optional] 
**logo_url** | **String** |  | [optional] 
**alternative_id** | **String** |  | [optional] 
**bank_payments_csv_format** | [**BankPaymentInstructionsCsvFormat**](BankPaymentInstructionsCsvFormat.md) |  | [optional] 
**bacs_service_user_number** | **String** |  | [optional] 
**bacs_bureau_number** | **String** |  | [optional] 
**reject_invalid_bank_details** | **BOOLEAN** |  | [optional] 
**bank_payments_reference_format** | **String** |  | [optional] 
**address** | [**Address**](Address.md) |  | [optional] 
**bank_details** | [**BankDetails**](BankDetails.md) |  | [optional] 
**default_pay_options** | [**PayOptions**](PayOptions.md) |  | [optional] 
**hmrc_details** | [**HmrcDetails**](HmrcDetails.md) |  | [optional] 
**default_pension** | [**PensionSelection**](PensionSelection.md) |  | [optional] 
**rti_submission_settings** | [**RtiSubmissionSettings**](RtiSubmissionSettings.md) |  | [optional] 
**auto_enrolment_settings** | [**AutoEnrolmentSettings**](AutoEnrolmentSettings.md) |  | [optional] 
**leave_settings** | [**LeaveSettings**](LeaveSettings.md) |  | [optional] 
**settings** | [**EmployerSettings**](EmployerSettings.md) |  | [optional] 
**umbrella_settings** | [**UmbrellaSettings**](UmbrellaSettings.md) |  | [optional] 
**employee_count** | **Integer** | [readonly] The number of Employees this Employer has, including CIS Subcontractors. | [optional] 
**subcontractor_count** | **Integer** | [readonly] The number of CIS Subcontractors this Employer has. | [optional] 
**start_year** | [**TaxYear**](TaxYear.md) |  | [optional] 
**current_year** | [**TaxYear**](TaxYear.md) |  | [optional] 
**support_access_enabled** | **BOOLEAN** | If set to true then the support team can access this employer to help resolve  support queries | [optional] 
**archived** | **BOOLEAN** | A flag to indicate whather or not the employer is Archived, ie no longer actively used | [optional] 
**can_use_bureau_features** | **BOOLEAN** |  | [optional] 
**id** | **String** | [readonly] The unique id of the object | [optional] 
**source_system_id** | **String** | [readonly] Can only be given a value when the employer is created. It can then never be changed.\\n  Used by external systems so they can store an immutable reference | [optional] 

