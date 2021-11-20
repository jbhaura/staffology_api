# SwaggerClient::TaxAndNi

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ni_table** | **String** | The appropriate NI letter for this Employee | 
**secondary_class1_not_payable** | **BOOLEAN** | If set to true then no Employer NI will be paid for this Employee | [optional] 
**postgrad_loan** | **BOOLEAN** | Set to true if the Employee needs to make Post Graduate Loan repayments | [optional] 
**student_loan** | [**StudentLoan**](StudentLoan.md) |  | [optional] 
**tax_code** | **String** | The Tax Code for this Employee | [optional] 
**week1_month1** | **BOOLEAN** | Determines whether PAYE should be calculated on a Week1/Month1 basis instead of on a cumulative basis./n  This is automatically set to false for any existing Employees when you start a new Tax Year. | [optional] 

