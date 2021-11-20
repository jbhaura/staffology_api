# SwaggerClient::PaySchedule

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | A descriptive name for this PaySchedule | [optional] 
**ordinal** | **Integer** | [readonly] Indicates whether this is first, second, third (etc) PaySchedule for this PayPeriod. | [optional] 
**tax_year** | [**TaxYear**](TaxYear.md) |  | [optional] 
**pay_period** | [**PayPeriods**](PayPeriods.md) |  | [optional] 
**first_period_end_date** | **Date** | The last day of the first pay period | [optional] 
**first_payment_date** | **Date** | The first payment date | [optional] 
**payment_date_type** | [**PaymentDateType**](PaymentDateType.md) |  | [optional] 
**period_lengths** | **Array&lt;Integer&gt;** | Only applicable for PayPeriod of Custom. Defines the length of each period | [optional] 
**period_events_config** | [**PaySchedulePeriodEventsConfig**](PaySchedulePeriodEventsConfig.md) |  | [optional] 
**has_open_pay_run_period** | **BOOLEAN** | [readonly] Will be true if the employer currently has an open PayRun for this PayPeriod | [optional] 
**last_period_end_date** | **Date** | [readonly] The end date of the most recent PayRun on this schedule | [optional] 
**last_period_number** | **Integer** | [readonly] The period number of the most recent PayRun on this schedule | [optional] 
**employee_count** | **Integer** | [readonly] The number of employees paid with this PaySchedule | [optional] 
**is_required** | **BOOLEAN** | [readonly] Whether or not this PaySchedule is required for the employer, ie: they have employees to be paid on this PaySchedule | [optional] 
**is_configured** | **BOOLEAN** | [readonly] Whether or not this PaySchedule has been configured and is ready for use | [optional] 
**is_year_completed** | **BOOLEAN** | [readonly] Returns true if all PayRuns for this PaySchedule in the TaxYear have been completed | [optional] 
**year_end_tasks** | **Array&lt;String&gt;** | [readonly] A list of actions that need to be completed for this PaySchedule before this TaxYear can be finalised | [optional] 
**pay_runs** | [**Array&lt;Item&gt;**](Item.md) | [readonly] Details of PayRuns for this PaySchedule | [optional] 
**current_pay_run** | [**Item**](Item.md) |  | [optional] 
**next_pay_run** | [**PayRun**](PayRun.md) |  | [optional] 

