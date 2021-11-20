# SwaggerClient::DepartmentMembership

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **String** | The Code for the Department | 
**color** | **String** | [readonly] The Color for the Department | [optional] 
**title** | **String** | [readonly] The Title for the Department | [optional] 
**primary** | **BOOLEAN** | Set to true if this is the primary Department for the Employee.\\n  Only one department can be set as the primary. | [optional] 
**weighting** | **Float** | If there is more than one Department Membership for the Employee then this determines the weighting to give to this membership.\\n  ie, if he is in two departments you might set the primary as 0.8 and the secondary as 0.2; | [optional] 

