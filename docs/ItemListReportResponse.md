# SwaggerClient::ItemListReportResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | [readonly] The content-type, this would usually be the same as the accept header you provided when you requested the report | [optional] 
**content** | **String** | [readonly] This could contain a link to a PDF file, HTML content or other content, depending on the Type value. | [optional] 
**model** | [**Array&lt;Item&gt;**](Item.md) | [readonly] If the type is application.json then this will contain a JSON representation of the relevant model | [optional] 

