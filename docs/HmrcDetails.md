# SwaggerClient::HmrcDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**office_number** | **String** |  | [optional] 
**paye_reference** | **String** |  | [optional] 
**accounts_office_reference** | **String** |  | [optional] 
**econ** | **String** |  | [optional] 
**utr** | **String** |  | [optional] 
**co_tax** | **String** |  | [optional] 
**employment_allowance** | **BOOLEAN** |  | [optional] 
**employment_allowance_max_claim** | **Float** | Leave as 0 and we&#x27;ll use the default value for the year.  You might reduce this from the default if you&#x27;ve made/are making a claim in another system | [optional] 
**small_employers_relief** | **BOOLEAN** |  | [optional] 
**apprenticeship_levy** | **BOOLEAN** |  | [optional] 
**apprenticeship_levy_allowance** | **Float** |  | [optional] 
**quarterly_payment_schedule** | **BOOLEAN** | Set to true if the employer pays HMRC on a quarterly schedule.  A value of false implies a monthly schedule.\\n  &lt;b&gt;Warning:&lt;/b&gt; Changing this value after starting PayRuns will  delete any existing payments or adjustments you may have entered. | [optional] 
**include_employment_allowance_on_monthly_journal** | **BOOLEAN** | If the employer is not on a QuarterlyPaymentSchedule  and is claiming EmploymentAllowance, then set this to true to include a line for  Employment Allowance on the journal for the monthly schedule. | [optional] 
**carry_forward_unpaid_liabilities** | **BOOLEAN** | If set to true then any unpaid amounts from previous periods will be brought forward  to work out the liability for the current period.\\n  You&#x27;d set this to false if you don&#x27;t want to track payments. | [optional] 
**id** | **String** | [readonly] The unique id of the object | [optional] 

