# SwaggerClient::DpsSettings

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **BOOLEAN** | If enabled, we&#x27;ll automatically retrieve DPS notices from HMRC for you | [optional] 
**retrieve_from** | **Date** | The date from which notices should be retrieved | [optional] 
**auto_apply** | **BOOLEAN** | If enabled, we&#x27;ll automatically apply DPSNotices before starting a payrun that covers the EffectiveDate | [optional] 
**last_checked** | **Date** | [readonly] The time we last checked for notices | [optional] 
**error** | **String** | [readonly] If we received an error from HMRC when checking for notices, it&#x27;ll be displayed here | [optional] 

