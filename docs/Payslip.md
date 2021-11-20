# SwaggerClient::Payslip

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**is_closed** | **BOOLEAN** | [readonly] Indicates if the Payrun has been finalised | [optional] 
**period** | **String** | [readonly] A description of the period that Payslip relates to. | [optional] 
**from** | **Date** | [readonly] The start date of the period this Payslip covers. | [optional] 
**to** | **Date** | [readonly] The end date of the period this Payslip covers. | [optional] 
**payment_date** | **Date** | [readonly] The date the Employee will be paid on | [optional] 
**note** | **String** | [readonly] Any note that should appear on the payslip | [optional] 
**allowance_note** | **String** | [readonly] Details of remaining allowance to show on payslip | [optional] 
**employee** | [**Item**](Item.md) |  | [optional] 
**logo_url** | **String** | [readonly] The Logo to include on the payslip | [optional] 
**employer** | [**Item**](Item.md) |  | [optional] 
**employer_address** | [**Address**](Address.md) |  | [optional] 
**hmrc_details** | [**HmrcDetails**](HmrcDetails.md) |  | [optional] 
**pay_options** | [**PayOptions**](PayOptions.md) |  | [optional] 
**employment_details** | [**EmploymentDetails**](EmploymentDetails.md) |  | [optional] 
**personal_details** | [**PersonalDetails**](PersonalDetails.md) |  | [optional] 
**totals** | [**PayRunTotals**](PayRunTotals.md) |  | [optional] 
**totals_ytd** | [**PayRunTotals**](PayRunTotals.md) |  | [optional] 
**lines** | [**Array&lt;PayslipLine&gt;**](PayslipLine.md) | [readonly] The lines to display on the Payslip | [optional] 
**employer_ni** | **Float** | [readonly] The Employer NI Contribution amount | [optional] 
**employer_pension_contribs** | **Float** | [readonly] AThe Employer Pension Contribution Amount | [optional] 

