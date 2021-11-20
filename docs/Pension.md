# SwaggerClient::Pension

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contribution_level_type** | [**PensionContributionLevelType**](PensionContributionLevelType.md) |  | [optional] 
**id** | **String** | [readonly] The unique id of the object | [optional] 
**pension_scheme_id** | **String** |  | [optional] 
**pension_scheme** | [**PensionScheme**](PensionScheme.md) |  | [optional] 
**worker_group_id** | **String** |  | [optional] 
**worker_group** | [**WorkerGroup**](WorkerGroup.md) |  | [optional] 
**start_date** | **Date** |  | [optional] 
**member_reference_number** | **String** |  | [optional] 
**override_contributions** | **BOOLEAN** | If this is set to true then the Contributions levels set for the WorkerGroup will be replaced with the values provided here | [optional] 
**employee_contribution** | **Float** | The amount the employee contributes towards the pension. Could be a percentage or a fixed amount depending on EmployeeContributionIsPercentage.\\n  This is read-only if OverrideContributions is false | [optional] 
**employee_contribution_is_percentage** | **BOOLEAN** | Determines whether the Value of the EmployeeContribution is a fixed amount or a percentage, | [optional] 
**employer_contribution** | **Float** | The amount the employer contributes towards the pension. Could be a percentage or a fixed amount depending on EmployerContributionIsPercentage.\\n  This is read-only if OverrideContributions is false | [optional] 
**employer_contribution_is_percentage** | **BOOLEAN** | Determines whether the Value of the EmployerContribution is a fixed amount or a percentage, | [optional] 
**employer_contribution_top_up_percentage** | **Float** | Increase Employer Contribution by this percentage of the Employee Contribution | [optional] 
**is_ae_qualifying_scheme** | **BOOLEAN** | [readonly] Whether or not the associated PensionScheme is a Qualifying Scheme for AutoEnrolment | [optional] 
**is_teachers_pension** | **BOOLEAN** | [readonly] Whether or not the associated PensionScheme is a Teachers&#x27; Pension (determined by its CsvFormat) | [optional] 
**ae_status_at_joining** | [**AeStatus**](AeStatus.md) |  | [optional] 
**external_employee_id** | **String** | [readonly] | [optional] 
**additional_voluntary_contribution** | **Float** | Any additional voluntary amount the employer contributes towards the pension. Could be a percentage or a fixed amount depending on AvcIsPercentage.\\n | [optional] 
**avc_is_percentage** | **BOOLEAN** | Determines whether the Value of the Additional Voluntary Contribution is a fixed amount or a percentage, | [optional] 
**exit_via_provider** | **BOOLEAN** |  | [optional] 
**teachers_pension_details** | [**TeachersPensionDetails**](TeachersPensionDetails.md) |  | [optional] 
**forced_tier** | **String** | If the WorkerGroup ContributionLevelType is a Tiered Scheme then you can specify the name of the tier to force the employee on to.\\n  If none is specified then the Tier is determined by the earnings in the period | [optional] 
**force_enrolment** | **BOOLEAN** | If the PensionScheme is connected to an ExternalDataProvider that supports enrolment then setting this to true will force this employee to be enrolled with the next submission. | [optional] 
**auto_enrolled** | **BOOLEAN** | [readonly] Is True if the employee joined this Pension due to an AutoEnrolment action | [optional] 

