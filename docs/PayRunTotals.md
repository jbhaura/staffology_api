# SwaggerClient::PayRunTotals

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**basic_pay** | **Float** | [readonly] The amount to be paid to this Employee as a result of the PayOptions that have been set | [optional] 
**gross** | **Float** | [readonly] Gross pay | [optional] 
**gross_for_ni** | **Float** | [readonly] The amount of the Gross that is subject to NI | [optional] 
**gross_for_tax** | **Float** | [readonly] The amount of the Gross that is subject to PAYE | [optional] 
**employer_ni** | **Float** | [readonly] | [optional] 
**employee_ni** | **Float** | [readonly] | [optional] 
**employer_ni_off_payroll** | **Float** | [readonly] The amount included in EmployerNi that is in relation to Off-Payroll Workers | [optional] 
**real_time_class1_a_ni** | **Float** | [readonly] | [optional] 
**tax** | **Float** | [readonly] | [optional] 
**net_pay** | **Float** | [readonly] The Net Pay for this Employee | [optional] 
**adjustments** | **Float** | [readonly] The value of adjustments made to the Net Pay (Non taxable/NIable additions/deductions) | [optional] 
**additions** | **Float** | The value of all additions.  This minus Deductions should equal TakeHomePay | [optional] 
**deductions** | **Float** | The value of all deductions.  Additions minus This value should equal TakeHomePay | [optional] 
**take_home_pay** | **Float** | [readonly] The amount this Employee takes home | [optional] 
**non_tax_or_nic_pmt** | **Float** | [readonly] The value of any payments being made to this Employee that aren&#x27;t being subjected to PAYE or NI | [optional] 
**items_subject_to_class1_nic** | **Float** | [readonly] Items subject to Class 1 NIC but not taxed under PAYE regulations excluding pension contributions | [optional] 
**dedns_from_net_pay** | **Float** | [readonly] The value of any deductions being made to the Net Pay for this Employee | [optional] 
**tcp_tcls** | **Float** | [readonly] Value of payments marked as Trivial Commutation Payment (A - TCLS) | [optional] 
**tcp_pp** | **Float** | [readonly] Value of payments marked as Trivial Commutation Payment (B - Personal Pension) | [optional] 
**tcp_op** | **Float** | [readonly] Value of payments marked as Trivial Commutation Payment (C - Occupational Pension) | [optional] 
**flexi_dd_death** | **Float** | [readonly] Value of payments marked as flexibly accessing death benefit (taxable) | [optional] 
**flexi_dd_death_non_tax** | **Float** | [readonly] Value of payments marked as flexibly accessing death benefit (non taxable) | [optional] 
**flexi_dd_pension** | **Float** | [readonly] Value of payments marked as flexibly accessing pension (taxable) | [optional] 
**flexi_dd_pension_non_tax** | **Float** | [readonly] Value of payments marked as flexibly accessing pension (non taxable) | [optional] 
**smp** | **Float** | [readonly] Statutory Maternity Pay | [optional] 
**spp** | **Float** | [readonly] Statutory Paternity Pay | [optional] 
**sap** | **Float** | [readonly] Statutory Adoption Pay | [optional] 
**shpp** | **Float** | [readonly] Statutory Shared Parental Pay | [optional] 
**spbp** | **Float** | [readonly] Statutory Parental Bereavement Pay | [optional] 
**ssp** | **Float** | [readonly] Statutory Sick  Pay | [optional] 
**student_loan_recovered** | **Float** | [readonly] | [optional] 
**postgrad_loan_recovered** | **Float** | [readonly] | [optional] 
**pensionable_earnings** | **Float** | [readonly] The amount of the Gross that is subject to Pension Deductions.\\n  If the Pension Scheme uses Qualifying Earnings (upper and lower limits) then this value is before those are applied | [optional] 
**pensionable_pay** | **Float** | [readonly] The amount of the Gross that pension calculations are based on after taking into account Upper and Lower Limits for the WorkerGroup. | [optional] 
**non_tierable_pay** | **Float** | [readonly] The value of any pay that shouldn&#x27;t count towards determining a pension tier. | [optional] 
**employee_pension_contribution** | **Float** | [readonly] The value of the Pension Contribution being made by this Employee, excluding any Additional Voluntary Contributions | [optional] 
**employee_pension_contribution_avc** | **Float** | [readonly] The value of the Pension Contribution being made by this Employee as an Additional Voluntary Contribution | [optional] 
**employer_pension_contribution** | **Float** | [readonly] The value of the Pension Contribution being made by the Employer for this Employee | [optional] 
**empee_pen_contribns_not_paid** | **Float** | [readonly] Value of employee pension contributions that are not paid under &#x27;net pay arrangements&#x27;, including any AVC | [optional] 
**empee_pen_contribns_paid** | **Float** | [readonly] Value of employee pension contributions paid under &#x27;net pay arrangements&#x27;, including any AVC | [optional] 
**attachment_order_deductions** | **Float** | [readonly] Value of deductions made due to AttachmentOrders | [optional] 
**cis_deduction** | **Float** | [readonly] Value of any CIS Deduction made | [optional] 
**cis_vat** | **Float** | [readonly] Value of any VAT paid to CIS Subcontractor | [optional] 
**cis_umbrella_fee** | **Float** | [readonly] Value of any pre-tax fee charged to the CIS Subcontractor for processing the payment | [optional] 
**cis_umbrella_fee_post_tax** | **Float** | [readonly] Value of any post-tax fee charged to the CIS Subcontractor for processing the payment | [optional] 
**pbik** | **Float** | [readonly] Value of any Payrolled Benefits In Kind | [optional] 
**maps_miles** | **Integer** | [readonly] The number of miles paid for Mileage Allowance Payments | [optional] 
**umbrella_fee** | **Float** | [readonly] Value of any Umbrella fee charged for processing the payment | [optional] 
**app_levy_deduction** | **Float** | [readonly] Value of any Apprenticeship Levy fee deducted for processing the umbrella payment | [optional] 
**payment_after_leaving** | **Float** | [readonly] Payment After Leaving | [optional] 
**tax_on_payment_after_leaving** | **Float** | [readonly] Tax On Payment After Leaving | [optional] 
**nil_paid** | **Integer** | [readonly] The number of employees with NilPaid on the PayRun | [optional] 
**leavers** | **Integer** | [readonly] The number of Leavers on ths PayRun | [optional] 
**starters** | **Integer** | [readonly] The number of Starters on this PayRun | [optional] 
**total_cost** | **Float** |  | [optional] 

