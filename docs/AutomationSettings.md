# SwaggerClient::AutomationSettings

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enable_auto_pilot** | **BOOLEAN** | IF enabled then payruns will be automatically finalised on the payment date and the next payrun will be started | [optional] 
**auto_pilot_time** | [**AutoPilotFinaliseTime**](AutoPilotFinaliseTime.md) |  | [optional] 
**auto_pilot_offset** | **Integer** | How many days before the payment date a payrun should be finalised.\\n  Set it to 0 if you want the payrun to be automatically finalised on the payment date itself | [optional] 
**enable_auto_open** | **BOOLEAN** | IF enabled then whenever you close a payrun, the next one will be started. Automatically set to true if EnableAutoPilot is true | [optional] 
**auto_submit_fps** | **BOOLEAN** | If set to true, we&#x27;ll automatically send your FPS to HMRC whenever you finalise a PayRun.\\n  This property will always have the same value as the property with the same name on the RtiSubmissionSettings model. | [optional] 
**auto_submit_payments** | **BOOLEAN** | If set to true, we&#x27;ll automatically submit payments whenever you finalise a PayRun.\\n  The employer must be connected to an ExternalDataProvider supporting Type of &#x27;Payments&#x27;. | [optional] 
**auto_submit_journal** | **BOOLEAN** | If set to true, we&#x27;ll automatically submit the payroll journal whenever you finalise a PayRun.\\n  The employer must be connected to an ExternalDataProvider supporting Type of &#x27;Accounting&#x27;. | [optional] 
**auto_submit_payments_employee** | **BOOLEAN** | Used in conjunction with AutoSubmitPayments. | [optional] 
**auto_submit_payments_hmrc** | **BOOLEAN** | Used in conjunction with AutoSubmitPayments. | [optional] 
**auto_submit_payments_pensions** | **BOOLEAN** | Used in conjunction with AutoSubmitPayments. | [optional] 
**employees_without_email_address** | **Integer** | [readonly] A count of how many employees or subcontractors for this employer do not have email addresses | [optional] 
**employees_with_email_address_but_not_auto_sending** | **Integer** | [readonly] A count of how many employees or subcontractors for this employer do have email addresses but don&#x27;t have the option enabled to auto-email payslips | [optional] 
**subcontractors_not_auto_sending_statement** | **Integer** | [readonly] A count of how many subscontractors for this employer do don&#x27;t have the option enabled to auto-email statement | [optional] 
**coding_notices_automatically_applied** | **BOOLEAN** | [readonly] An indicator of whether or not this employer is automatically applying DpsNotices | [optional] 
**payrun_emails** | [**Array&lt;PayrunEmail&gt;**](PayrunEmail.md) | Automated emails that will be sent when a PayRun is finalised | [optional] 

