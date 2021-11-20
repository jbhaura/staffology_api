# SwaggerClient::BankPaymentInstruction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**originator** | [**BankDetails**](BankDetails.md) |  | [optional] 
**bank_payments** | [**Array&lt;PayRunPayment&gt;**](PayRunPayment.md) |  | [optional] 
**status** | [**BackgroundTaskStatus**](BackgroundTaskStatus.md) |  | [optional] 
**status_message** | **String** | [readonly] A message to elaborate on the Status | [optional] 
**link** | **String** | [readonly] If available, a link to the payments in an ExternalDataProvider | [optional] 

