# SwaggerClient::PayRunJournal

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lines** | [**Array&lt;PayRunSummaryLine&gt;**](PayRunSummaryLine.md) |  | [optional] 
**date** | **Date** | [readonly] The PaymentDate from the PayRun | [optional] 
**title** | **String** | [readonly] The status of the task for posting this journal to an ExternalDataProvider | [optional] 
**status** | [**BackgroundTaskStatus**](BackgroundTaskStatus.md) |  | [optional] 
**status_message** | **String** | [readonly] A message to elaborate on the Status | [optional] 
**link** | **String** | [readonly] If available, a link to the journal in the ExternalDataProvider | [optional] 
**tax_year** | [**TaxYear**](TaxYear.md) |  | [optional] 
**pay_period** | [**PayPeriods**](PayPeriods.md) |  | [optional] 
**ordinal** | **Integer** | [readonly] | [optional] 
**period** | **Integer** | [readonly] | [optional] 

