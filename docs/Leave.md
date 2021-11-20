# SwaggerClient::Leave

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**provider_id** | [**ExternalDataProviderId**](ExternalDataProviderId.md) |  | [optional] 
**external_id** | **String** | If the Leave comes from an ExternalDataProvider, then this is its Id in the ExternalDataProvider | [optional] 
**type** | [**LeaveType**](LeaveType.md) |  | [optional] 
**pay** | [**LeavePayType**](LeavePayType.md) |  | [optional] 
**from** | **DateTime** | The first day of Leave.\\n  If it&#x27;s a half day PM then set the time portion to 12:00:00, otherwise leave it blank or set it to 00:00:00 | [optional] 
**to** | **DateTime** | The last day of Leave.\\n  If it&#x27;s a half day AM then set the time portion to 11:59:59, otherwise set it to 23:59:59 | [optional] 
**notes** | **String** | A free-form text field to record any comments | [optional] 
**average_weekly_earnings** | **Float** | The employees average weekly earnings. Only relevant for Statutory Pay\\n  It&#x27;s advised that you don&#x27;t try to calculate this yourself. | [optional] 
**automatic_awe_calculation** | **BOOLEAN** | If set to True then we&#x27;ll automatically calculate the AverageWeeklyEarnings.   Set it to false if you want to manually provide a figure that overrides our calculations | [optional] 
**baby_date** | **Date** | Only required for Parental Leave with Statutory Pay\\n  If Type is Maternity or Paternity then this is the date the baby is due.\\n  For Adoption Leave this is the Matching Date. | [optional] 
**override_payment_description** | **BOOLEAN** | If Pay is StatutoryPay and you want to override our description that goes with the payment then set this to true | [optional] 
**overriden_payment_description** | **String** | If OverridePaymentDescription is true and Pay is set to StatutoryPay then we&#x27;ll use this as the description for the payment amount. | [optional] 
**working_days** | **Float** | [readonly] The number of working days covered by this leave.  This is calculated based on the employees Working Pattern. | [optional] 
**total_days** | **Float** | [readonly] The number of days covered by this leave, regardless of whether or not they&#x27;re working days.  This is calculated based on the employees Working Pattern. | [optional] 
**use_assumed_pensionable_pay** | **BOOLEAN** | If this Leave has Statutory Pay (and isn&#x27;t for Sick) then if this is set to True  we will use the value set in AssumedPensionablePay to work out the employer pension contributions | [optional] 
**assumed_pensionable_pay** | **Float** | if AssumedPensionablePay is True, then this is the value used to calculate the employer pension contributions | [optional] 
**offset_pay** | **BOOLEAN** | If this Leave has Statutory Pay  and this is set to True and the employe eis paid a fixed amoutn per period  with Leave Adjustments set to automatic, then we&#x27;ll reduce their pay for the period by the statutory amount  so the employee still gets paid the full amount. | [optional] 
**ssp_pay_from_day_one** | **BOOLEAN** | If this is Sick Leave with Statutory Pay then setting this to true  will force SSP to be paid from day one rather than the usual rule   of the first Working Day after 3 Qualifying Days | [optional] 
**linked_piw** | [**LinkedPiw**](LinkedPiw.md) |  | [optional] 
**kit_split_days** | **Array&lt;DateTime&gt;** | If the LeaveType supports KIT/SPLIT days then use this property to store the list of dates | [optional] 
**document_count** | **Integer** | [readonly] The number of attachments associated with this model | [optional] 
**documents** | [**Array&lt;Item&gt;**](Item.md) | [readonly] The attachments associated with this model | [optional] 
**employee** | [**Item**](Item.md) |  | [optional] 
**id** | **String** | [readonly] The unique id of the object | [optional] 

