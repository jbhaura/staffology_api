# SwaggerClient::AttachmentOrderPayment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachment_order** | [**Item**](Item.md) |  | [optional] 
**tax_year** | [**TaxYear**](TaxYear.md) |  | [optional] 
**pay_period** | [**PayPeriods**](PayPeriods.md) |  | [optional] 
**date** | **Date** | [readonly] The date this deduction was made | [optional] 
**description** | **String** | [readonly] Description of deduction, usually the reference from the AttachmentOrder | [optional] 
**attachable_pay** | **Float** | [readonly] The total Attachable pay for the Employee on this PayRun | [optional] 
**protected_pay** | **Float** | [readonly] The amount of the Attachable Pay that must be protected | [optional] 
**other_attachment_order_deductions** | **Float** | [readonly] Deductions made on this PayRun for this employee due to  other higher priority AttachmentOrders | [optional] 
**desired_deduction** | **Float** | [readonly] The amount that should be deducted, if arrestable pay is available.  Not including any shortfall | [optional] 
**shortfall** | **Float** | [readonly] Any shortfall (ie arrears) that existed before this PayRun. | [optional] 
**total_paid** | **Float** | [readonly] Total amount paid to date, including this deduction. | [optional] 
**resulting_deduction** | **Float** | [readonly] The actual amount deducted | [optional] 
**resulting_shortfall** | **Float** | [readonly] The resulting shortfall (including any shortfall from previous periods | [optional] 
**admin_fee** | **Float** | [readonly] Any admin fee charged | [optional] 
**employee** | [**Item**](Item.md) |  | [optional] 
**id** | **String** | [readonly] The unique id of the object | [optional] 

