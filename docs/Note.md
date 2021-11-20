# SwaggerClient::Note

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**note_date** | **Date** | The date of the note | [optional] 
**note_text** | **String** | Note text | [optional] 
**created_by** | **String** | [readonly] The email address of the user that create the Note | [optional] 
**updated_by** | **String** | [readonly] The email address of the user that last updated the Note | [optional] 
**type** | [**NoteType**](NoteType.md) |  | [optional] 
**document_count** | **Integer** | [readonly] The number of attachments associated with this model | [optional] 
**documents** | [**Array&lt;Item&gt;**](Item.md) | [readonly] The attachments associated with this model | [optional] 
**employee** | [**Item**](Item.md) |  | [optional] 
**id** | **String** | [readonly] The unique id of the object | [optional] 

