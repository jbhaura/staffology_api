# SwaggerClient::WebhookPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | [readonly] A descriptive name for this payload | [optional] 
**url** | **String** | [readonly] The Url that payload will be sent to | 
**attempts** | **Integer** | [readonly]  The number of attempts that have been made to deliver this payload | [optional] 
**status_code** | **Integer** | [readonly] The status code received from the Url | [optional] 
**task_status** | [**BackgroundTaskStatus**](BackgroundTaskStatus.md) |  | [optional] 
**status_message** | **String** | [readonly]  A message to accompany the status | [optional] 
**created** | **Date** | [readonly]  The date and time this payload was created | [optional] 
**payload** | [****](.md) | [readonly] the JSON payload that will be sent to the URl | [optional] 
**id** | **String** | [readonly] The unique id of the object | [optional] 

