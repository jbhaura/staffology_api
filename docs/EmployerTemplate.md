# SwaggerClient::EmployerTemplate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**EmployerTemplateType**](EmployerTemplateType.md) |  | [optional] 
**description** | **String** | Explains the purpose of this template | [optional] 
**is_custom** | **BOOLEAN** | Indicates whether or not this template has been changed from the default content. | [optional] 
**content** | **String** |  | [optional] 
**subject** | **String** |  | [optional] 
**default_content** | **String** | [readonly] The default content for this template | [optional] 
**default_subject** | **String** | [readonly] The default subject for this template | [optional] 
**has_subject** | **BOOLEAN** | [readonly] If false then the Subject property is not relevant for this template type | [optional] 
**tokens** | **Array&lt;String&gt;** | [readonly] A list of tokens that can be used with this template.\\nFor example, if  &#x27;Employee.FirstName&#x27; is in the list then use &#x27;{Employee.FirstName}&#x27; in the Content or Subject and  it&#x27;ll be replaced with the relevant value when the template is parsed. | [optional] 
**tokens_expanded** | **BOOLEAN** |  | [optional] 
**id** | **String** | [readonly] The unique id of the object | [optional] 

