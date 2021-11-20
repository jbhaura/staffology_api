# SwaggerClient::Webhook

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**webhook_event** | [**WebhookEvent**](WebhookEvent.md) |  | [optional] 
**url** | **String** | The Url to which the payload should be sent | 
**active** | **BOOLEAN** | If set to false then this Webhook will not be triggered | [optional] 
**event_count** | **Integer** | The number of times this webhook has been triggered | [optional] 
**last_payload** | [**WebhookPayload**](WebhookPayload.md) |  | [optional] 
**id** | **String** | [readonly] The unique id of the object | [optional] 

