# SwaggerClient::ValueOverride

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**PayrollValueType**](PayrollValueType.md) |  | [optional] 
**value** | **Float** | The value to use in place of the original value | [optional] 
**original_value** | **Float** | [readonly] The original value | [optional] 
**note** | **String** | The reason given for the overrride | [optional] 
**attachment_order_id** | **String** | The Id of the AttachmentOrder. Only relevant if the Type is set to AttachmentOrderDeductions | [optional] 
**pension_id** | **String** | The Id of the associated Pension. Only included if the Code is PENSION, PENSIONSS or PENSIONRAS | [optional] 

