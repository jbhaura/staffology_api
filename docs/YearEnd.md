# SwaggerClient::YearEnd

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ending_year** | [**TaxYear**](TaxYear.md) |  | [optional] 
**starting_year** | [**TaxYear**](TaxYear.md) |  | [optional] 
**create_eps_for_final_submission** | **BOOLEAN** | [readonly] Whether or not the system will automatically create an EPS to tell HMRC the year has ended. | [optional] 
**create_eps_for_employment_allowance** | **BOOLEAN** | [readonly] Whether or not the system will automatically create an EPS to tell HMRC you qualify for Employment Allowance. | [optional] 
**create_exb** | **BOOLEAN** | [readonly] Whether or not the system will automatically create an EXB to inform HMRC of Expenses and Benefits | [optional] 
**set_employment_allowance** | **Float** | [readonly] If the Employment Allowance needs to be changed, this indicates the new value | [optional] 
**tax_code_changes** | [**Array&lt;YearEndTaxCodeChange&gt;**](YearEndTaxCodeChange.md) | [readonly] Details of changes that wil be made to Tax Codes | [optional] 
**remove_week1_month1** | [**Array&lt;Item&gt;**](Item.md) | [readonly] Employees that will have the Week1Month1 flag removed from their tax code | [optional] 
**email_p60** | [**Array&lt;Item&gt;**](Item.md) | [readonly] Employees who will be automatically emailed P60s | [optional] 
**push_p60** | [**Array&lt;ExternalDataProviderId&gt;**](ExternalDataProviderId.md) | [readonly] ExternalDataProviderIds to which P60s can be pushed | [optional] 
**email_cis_statement** | [**Array&lt;Item&gt;**](Item.md) | [readonly] Subcontractors who will be automatically sent an annual CIS Statement | [optional] 

