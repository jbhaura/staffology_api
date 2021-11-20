# SwaggerClient::PensionSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pension_id** | **String** | [readonly] The Id of the Pension. | [optional] 
**name** | **String** | [readonly] The name of the PensionScheme to which contributions have been made. | [optional] 
**pension_scheme_id** | **String** | [readonly] The Id of the PensionScheme. | [optional] 
**start_date** | **Date** | [readonly] | [optional] 
**worker_group_id** | **String** | [readonly] The Id of the WorkerGroup. | [optional] 
**pension_rule** | [**PensionRule**](PensionRule.md) |  | [optional] 
**papdis_pension_provider_id** | **String** | [readonly] Papdis information from the PensionScheme | [optional] 
**papdis_employer_id** | **String** | [readonly] Papdis information from the PensionScheme | [optional] 
**employee_pension_contribution_multiplier** | **Float** | [readonly] If the PensionScheme is set to SubtractBasicRateTax then this value  is used to reduce the contribution amount.\\n  Otherwise it is set as 1. | [optional] 
**additional_voluntary_contribution** | **Float** | [readonly] Any Additional Voluntary Contribution the Employee has chosen to make  Otherwise it is set as 1. | [optional] 
**avc_is_percentage** | **BOOLEAN** | [readonly] Determines whether the Value of the Additional Voluntary Contribution is a fixed amount or a percentage, | [optional] 
**auto_enrolled** | **BOOLEAN** | [readonly] Any Additional Voluntary Contribution the Employee has chosen to make  Otherwise it is set as 1. | [optional] 
**worker_group** | [**WorkerGroup**](WorkerGroup.md) |  | [optional] 
**forced_tier** | **String** | [readonly] If the WorkerGroup ContributionLevelType is a Tiered Scheme then the name of the tier to force the employee on to may be specified.\\n  If none is specified then the Tier is determined by the earnings in the period | [optional] 
**tiers** | [**Array&lt;TieredPensionRate&gt;**](TieredPensionRate.md) |  | [optional] 
**assumed_pensionable_pay** | **Float** | [readonly] Assumed Pensionable Pay. If the employee is receiving any Statutory Leave that has an AssumedPensionablePay value set  then it&#x27;ll be shown here. | [optional] 
**pensionable_pay_codes** | **Array&lt;String&gt;** | [readonly] If the pension scheme is set to override the Pensionale PayCodes, then this is what they&#x27;ve been set to.\\n | [optional] 

