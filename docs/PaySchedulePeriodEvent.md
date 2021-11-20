# SwaggerClient::PaySchedulePeriodEvent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pay_period_event_type** | [**PayPeriodEventType**](PayPeriodEventType.md) |  | [optional] 
**event_date** | **Date** | The expected date and time of the event. | [optional] 
**actual_event_date** | **Date** | The actual date and time when the event was completed. | [optional] 
**is_over_due** | **BOOLEAN** | Returns true if its past the event date. | [optional] 
**id** | **String** | [readonly] The unique id of the object | [optional] 

