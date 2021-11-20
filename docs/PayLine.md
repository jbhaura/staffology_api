# SwaggerClient::PayLine

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**value** | **Float** | The amount to add or deduct (whether it is a deduction or addition depends on the PayCode used).\\n  If the PayCode has a CalculationType other than FixedAmount then this field will be a percentage.   If the PayCode has a MultiplierType other than None then this field will be readonly and automatically calculated. | [optional] 
**rate** | **Float** | If the related  PayCode has a MultiplierType other than None then this field will be used as the rate per day or hour. Otherwise it isn&#x27;t used | [optional] 
**multiplier** | **Float** | If the related PayCode has a MultiplierType other than None then this field will be used as number of days or hours | [optional] 
**description** | **String** | A freeform description to accompany this line. It will be displayed on the payslip. | [optional] 
**attachment_order_id** | **String** | [readonly] The Id of the associated AttachmentOrder. Only included if the Code is AEO | [optional] 
**pension_id** | **String** | [readonly] The Id of the associated Pension. Only included if the Code is PENSION, PENSIONSS or PENSIONRAS | [optional] 
**code** | **String** | The Code of the PayCode this line is assigned to. The PayCode determines the treatment of this line when it comes to NI, Tax and Pensions as well as whether it&#x27;s a deduction or addition. | [optional] 
**tags** | **Array&lt;String&gt;** |  | [optional] 

