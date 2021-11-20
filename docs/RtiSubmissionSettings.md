# SwaggerClient::RtiSubmissionSettings

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender_type** | [**RtiSenderType**](RtiSenderType.md) |  | [optional] 
**sender_id** | **String** | The SenderId used to submit RTI documents to HMRC | [optional] 
**password** | **String** | The Password used to submit RTI documents to HMRC | [optional] 
**exclude_nil_paid** | **BOOLEAN** | Whether or not to include Employees paid a zero amount on your FPS | [optional] 
**include_hash_cross_ref** | **BOOLEAN** | [readonly] Whether or not the Bacs Cross Ref field is included on your FPS submissions\\n  This is automatically set to true if you use a bank payments CSV format that supports it  or set to false if not | [optional] 
**auto_submit_fps** | **BOOLEAN** | If set to true, we&#x27;ll automatically send your FPS to HMRC whenever you finalise a PayRun | [optional] 
**test_in_live** | **BOOLEAN** | Used for testing the RTI gateway. If set to true then the Document Type name will have \&quot;-TIL\&quot; appended to it | [optional] 
**use_test_gateway** | **BOOLEAN** | If set to true then your RTI documents will be sent to HMRCs test services instead of the live service | [optional] 
**override_timestamp_value** | **String** | If a value is provided then it will be used as the timestamp on the RTI submission. This would normally only be used for testing purposes. | [optional] 
**contact** | [**RtiContact**](RtiContact.md) |  | [optional] 
**agent** | [**RtiAgent**](RtiAgent.md) |  | [optional] 
**id** | **String** | [readonly] The unique id of the object | [optional] 

