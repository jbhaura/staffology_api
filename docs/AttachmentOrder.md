# SwaggerClient::AttachmentOrder

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**AttachmentOrderType**](AttachmentOrderType.md) |  | [optional] 
**carry_forward_shortfall** | **BOOLEAN** | [ReadOnly] Whether or not shortfalls should be carried forward | [optional] 
**allow_protected_earnings** | **BOOLEAN** | [ReadOnly] Whether or not shortfalls should be carried forward | [optional] 
**auto_deduction** | **BOOLEAN** | [readonly] Whether or not the amount to be deducted is automatically calculated | [optional] 
**reference** | **String** | The reference which appeared on the court paperwork | [optional] 
**issue_date** | **Date** | The date of issue for this Order | [optional] 
**apply_from** | **Date** | The date from which to apply this Order | [optional] 
**apply_until** | **Date** | An optional date on which to stop applying this order | [optional] 
**deduction_is_percentage** | **BOOLEAN** | Whether or not the amount given for Deduction is a percentage rather than a fixed amount | [optional] 
**deduction** | **Float** | The percentage or amount (depending on DeductionIsPercentage) to deduct | [optional] 
**protected_earnings_is_percentage** | **BOOLEAN** | Whether or not the amount for ProtectedEarnings is a percentage rather than a fixed amount. | [optional] 
**protected_earnings** | **Float** | The percentage or amount or percentage (depending on ProtectedEarningsIsPercentage) to protect | [optional] 
**charge_admin_fee** | **BOOLEAN** | Whether or not a £1 admin fee should be deducted for this order | [optional] 
**shortfall** | **Float** | Any shortfall that is being carried forward | [optional] 
**stop_when_total_paid** | **BOOLEAN** | Whether or not this order should be stopped once a total amount has been paid | [optional] 
**total_amount_to_pay** | **Float** | The Total amount that needs to be paid for this Order | [optional] 
**amount_previously_paid** | **Float** | Any amount that has previously been paid towards this Order | [optional] 
**stopped** | **BOOLEAN** | [readonly] Whether or not this Order has been stopped.\\n  This is set automatically when either it&#x27;s paid in full or the ApplyUntil date has been reached. | [optional] 
**notes** | **String** | A free-form text field to record any comments | [optional] 
**include_bank_details** | **BOOLEAN** |  | [optional] 
**bank_details** | [**BankDetails**](BankDetails.md) |  | [optional] 
**payments** | [**Array&lt;AttachmentOrderPayment&gt;**](AttachmentOrderPayment.md) | [readonly] Payments made towards this order. Only populated when viewed as a report. | [optional] 
**document_count** | **Integer** | [readonly] The number of attachments associated with this model | [optional] 
**documents** | [**Array&lt;Item&gt;**](Item.md) | [readonly] The attachments associated with this model | [optional] 
**employee** | [**Item**](Item.md) |  | [optional] 
**id** | **String** | [readonly] The unique id of the object | [optional] 

