# SwaggerClient::WorkerGroup

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | 
**contribution_level_type** | [**PensionContributionLevelType**](PensionContributionLevelType.md) |  | [optional] 
**employee_contribution** | **Float** |  | [optional] 
**employee_contribution_is_percentage** | **BOOLEAN** |  | [optional] 
**employer_contribution** | **Float** |  | [optional] 
**employer_contribution_is_percentage** | **BOOLEAN** |  | [optional] 
**employer_contribution_top_up_percentage** | **Float** | Increase Employer Contribution by this percentage of the Employee Contribution | [optional] 
**custom_threshold** | **BOOLEAN** |  | [optional] 
**lower_limit** | **Float** |  | [optional] 
**upper_limit** | **Float** |  | [optional] 
**papdis_group** | **String** |  | [optional] 
**papdis_sub_group** | **String** |  | [optional] 
**local_authority_number** | **String** | Only applicable if ContributionLevelType is Tp2020 | [optional] 
**school_employer_type** | **String** | Only applicable if ContributionLevelType is Tp2020 | [optional] 
**worker_group_id** | **String** | [readonly] | [optional] 
**id** | **String** | [readonly] The unique id of the object | [optional] 

