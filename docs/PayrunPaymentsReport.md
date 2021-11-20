# SwaggerClient::PayrunPaymentsReport

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payments** | [**Array&lt;PayRunPayment&gt;**](PayRunPayment.md) |  | [optional] 
**status** | [**BackgroundTaskStatus**](BackgroundTaskStatus.md) |  | [optional] 
**status_message** | **String** | [readonly] A message to elaborate on the Status | [optional] 
**link** | **String** | [readonly]  If available, a link to the payments in an ExternalDataProvider | [optional] 
**employer** | [**Item**](Item.md) |  | [optional] 
**pay_period** | [**PayPeriods**](PayPeriods.md) |  | [optional] 
**ordinal** | **Integer** |  | [optional] 
**period** | **Integer** |  | [optional] 
**period_to** | **Integer** |  | [optional] 
**start_period_name** | **String** |  | [optional] 
**end_period_name** | **String** |  | [optional] 
**start_date** | **Date** |  | [optional] 
**end_date** | **Date** |  | [optional] 
**report** | [**Report**](Report.md) |  | [optional] 
**tax_year** | [**TaxYear**](TaxYear.md) |  | [optional] 

