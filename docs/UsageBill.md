# SwaggerClient::UsageBill

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**year** | **Integer** |  | [optional] 
**month** | **Integer** |  | [optional] 
**payslip_count** | **Integer** |  | [optional] 
**previously_billed_payslip_count** | **Integer** | The number of payslips that appear in the usage, but were billed in a previous period | [optional] 
**net_cost** | **Float** |  | [optional] 
**discount** | **Float** |  | [optional] 
**partner_discount_amount** | **Float** |  | [optional] 
**monthly_minimum** | **Float** |  | [optional] 
**total** | **Float** |  | [optional] 
**paid** | **BOOLEAN** |  | [optional] 
**usage** | [**Array&lt;Item&gt;**](Item.md) |  | [optional] 
**accounting_customer_id** | **String** |  | [optional] 
**accounting_invoice_id** | **String** |  | [optional] 
**accounting_invoice_link** | **String** |  | [optional] 
**id** | **String** | [readonly] The unique id of the object | [optional] 

