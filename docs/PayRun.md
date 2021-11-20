# SwaggerClient::PayRun

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tax_year** | [**TaxYear**](TaxYear.md) |  | [optional] 
**tax_month** | **Integer** | [readonly] The Tax Month that the Payment Date falls in | [optional] 
**pay_period** | [**PayPeriods**](PayPeriods.md) |  | [optional] 
**ordinal** | **Integer** | [readonly] Indicates whether this uses first, second, third (etc.) PaySchedule for this PayPeriod. | [optional] 
**period** | **Integer** | [readonly] The period (i.e, Tax Week or Tax Month) that this PayRun is for. | [optional] 
**start_date** | **Date** | [readonly] The start date of the period this PayRun covers | [optional] 
**end_date** | **Date** | [readonly] The end date of the period this PayRun covers | [optional] 
**payment_date** | **Date** | [readonly] The intended date that Employees will be paid, although this can be changed on a per PayRunEntry basis | [optional] 
**employee_count** | **Integer** | [readonly] The number of Employees included in this PayRun (including any CIS Subcontractors) | [optional] 
**sub_contractor_count** | **Integer** | [readonly] The number of CIS Subcontractors included in this PayRun | [optional] 
**totals** | [**PayRunTotals**](PayRunTotals.md) |  | [optional] 
**state** | [**PayRunState**](PayRunState.md) |  | [optional] 
**is_closed** | **BOOLEAN** | [readonly] Set to True if the PayRun is Finalised and changes can no longer be made | [optional] 
**date_closed** | **DateTime** |  | [optional] 
**auto_pilot_close_date** | **Date** | [readonly] If AutoPilot is enabled in the AutomationSettings for the Employer then this property will tell you when  the payrun will be automatically closed | [optional] 
**entries** | [**Array&lt;Item&gt;**](Item.md) | [readonly] The PayRunEntries that make up this PayRun.\\n  This is populate automatically when you start a PayRun. | [optional] 

