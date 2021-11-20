# SwaggerClient::PensionScheme

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | 
**provider** | [**PensionProvider**](PensionProvider.md) |  | [optional] 
**administrator** | [**PensionAdministrator**](PensionAdministrator.md) |  | [optional] 
**pension_rule** | [**PensionRule**](PensionRule.md) |  | [optional] 
**qualifying_scheme** | **BOOLEAN** | Set to true if this is a Qualifying Scheme for Auto Enrolment | [optional] 
**disable_ae_letters** | **BOOLEAN** | Set to true if the provider deals with AutoEnrolment Letters and therefore the system should not generate them | [optional] 
**subtract_basic_rate_tax** | **BOOLEAN** |  | [optional] 
**pay_method** | [**PayMethod**](PayMethod.md) |  | [optional] 
**bank_details** | [**BankDetails**](BankDetails.md) |  | [optional] 
**use_custom_pay_codes** | **BOOLEAN** | If set to true then rather than using the setting on the PayCode to determine if the pay is pensionable  we&#x27;ll instead treat it as pensionable if the Code is included in CustomPayCodes | [optional] 
**custom_pay_codes** | **Array&lt;String&gt;** | If UseCustomPayCodes is set to true then this contains a list of PayCodes.Code  that we&#x27;ll treat as being pensionable. | [optional] 
**worker_groups** | [**Array&lt;WorkerGroup&gt;**](WorkerGroup.md) | A list of WorkerGroups for this Pension. There must always be at least one WorkerGroup | [optional] 
**external_data_provider_id** | [**ExternalDataProviderId**](ExternalDataProviderId.md) |  | [optional] 
**external_data_company** | [**ExternalDataCompany**](ExternalDataCompany.md) |  | [optional] 
**id** | **String** | [readonly] The unique id of the object | [optional] 

