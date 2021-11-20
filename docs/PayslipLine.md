# SwaggerClient::PayslipLine

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**PayslipLineType**](PayslipLineType.md) |  | [optional] 
**code** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**secondary_description** | **String** |  | [optional] 
**value** | **Float** |  | [optional] 
**attachment_order_id** | **String** | [readonly] The Id of the associated AttachmentOrder. Only included if the Code is AEO | [optional] 
**pension_id** | **String** | [readonly] The Id of the associated Pension. Only included if the Code is PENSION, PENSIONSS or PENSIONRAS | [optional] 
**currency_symbol** | **String** |  | [optional] 
**formatted_value** | **String** |  | [optional] 
**has_secondary_description** | **BOOLEAN** |  | [optional] 

