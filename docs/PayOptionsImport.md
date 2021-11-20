# SwaggerClient::PayOptionsImport

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**employer_identifier** | **String** | Optional. But if one entry has it then all must.\\n  Allows you to import to multiple employers by specifying the Employers AlternativeIdentifier | [optional] 
**payroll_code** | **String** | The payroll code of the employee to update | [optional] 
**pay_amount** | **Float** | The amount the Employee is regularly paid each period | [optional] 
**basis** | [**PayBasis**](PayBasis.md) |  | [optional] 
**pay_code** | **String** | If you want to override the PayCode used for the Basic Pay then set the code here, otherwise leave this blank and the default will be used. | [optional] 
**pay_amount_multiplier** | **Float** | This property is irrelevant if the basis is Monthly.\\n  But if the basis is Daily or Hourly then this property sets how many days/hours the employee should be paid for in the period. | [optional] 
**note** | **String** | Any note that you&#x27;d like to appear on the payslip | [optional] 
**tags** | **Array&lt;String&gt;** |  | [optional] 
**lines** | [**Array&lt;PayLine&gt;**](PayLine.md) |  | [optional] 

