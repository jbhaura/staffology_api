# SwaggerClient::LeaveSettings

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**use_default_holiday_type** | **BOOLEAN** | If true then the value for HolidayType comes from the Employer record.\\n  This property only appears if the LeaveSettings is a child of an Employee (not of an Employer) | [optional] 
**use_default_allowance_reset_date** | **BOOLEAN** | If true then the value for the AllowanceResetDate comes from the Employer record.\\n  This property only appears if the LeaveSettings is a child of an Employee (not of an Employer) | [optional] 
**use_default_allowance** | **BOOLEAN** | If true then the value for the Allowance comes from the Employer record.\\n  This property only appears if the LeaveSettings if a child of an Employee (not of an Employer) | [optional] 
**use_default_accrue_payment_in_lieu** | **BOOLEAN** | If true then the value for AccruePaymentInLieu comes from the Employer record.\\n  This property only appears if the LeaveSettings is a child of an Employee (not of an Employer) | [optional] 
**use_default_accrue_payment_in_lieu_rate** | **BOOLEAN** | If true then the value for AccruePaymentInLieuRate comes from the Employer record.\\n  This property only appears if the LeaveSettings is a child of an Employee (not of an Employer) | [optional] 
**use_default_accrue_payment_in_lieu_all_gross_pay** | **BOOLEAN** | If true then the value for AccruePaymentInLieuAllGrossPay comes from the Employer record.\\n  This property only appears if the LeaveSettings is a child of an Employee (not of an Employer) | [optional] 
**use_default_accrue_payment_in_lieu_pay_automatically** | **BOOLEAN** | If true then the value for AccruePaymentInLieu comes from the Employer record.\\n  This property only appears if the LeaveSettings is a child of an Employee (not of an Employer) | [optional] 
**use_default_accrue_hours_per_day** | **BOOLEAN** | If true then the value for AccrueHoursPerDay comes from the Employer record.\\n  This property only appears if the LeaveSettings is a child of an Employee (not of an Employer) | [optional] 
**allowance_reset_date** | **Date** | The date that the holiday allowance resets. Only the day/month part of the value is relevant. | [optional] 
**allowance** | **Float** | The number of days holiday an employee can take per year if HolidayType is Days.  Otherwise this is readonly and gives you the number of days accrued since the last reset | [optional] 
**adjustment** | **Float** | Adjustment to number of hours/days/weeks holiday this employee can take per year.\\n  Will reset to 0 when the Allowance resets.\\n  This property only appears if the LeaveSettings is a child of an Employee (not of an Employer) | [optional] 
**allowance_used** | **Float** | [readonly] The number of days used from the allowance since last reset | [optional] 
**allowance_used_previous_period** | **Float** | [readonly] The number of days used in the 12 months prior to the last reset | [optional] 
**allowance_remaining** | **Float** | [readonly] The number of days remaining of the allowance until next reset | [optional] 
**holiday_type** | [**HolidayType**](HolidayType.md) |  | [optional] 
**accrue_set_amount** | **BOOLEAN** | If true and HolidayType is Accrual_Days then the AccruePaymentInLieuRate will be treated as the set amount to accrue per period worked. | [optional] 
**accrue_hours_per_day** | **Float** | If HolidayType is Accrual_Days then this value is used to help convert hours worked into days accrued | [optional] 
**show_allowance_on_payslip** | **BOOLEAN** | If true then the remaining Allowance will be shown on the employees payslip. | [optional] 
**show_ahp_on_payslip** | **BOOLEAN** | If true then the AHP balance will be shown on the employees payslip. | [optional] 
**accrue_payment_in_lieu_rate** | **Float** | The rate at which Payments in Lieu acrrue. Typically this should be 12.07%. | [optional] 
**accrue_payment_in_lieu_all_gross_pay** | **BOOLEAN** | Set to true if you want accrued holiday payments to be calculated on the total gross pay for the employee or just on the single regular pay element | [optional] 
**accrue_payment_in_lieu_pay_automatically** | **BOOLEAN** | Set to true if you want employees to be automatically paid any outstanding holiday pay | [optional] 
**accrued_payment_liability** | **Float** | [readonly] The total accrued payments for this employee over the lifetime of their employment so far | [optional] 
**accrued_payment_adjustment** | **Float** | Any manual adjustment to the total accrued | [optional] 
**accrued_payment_paid** | **Float** | [readonly] The Total amount paid to this employee in lieu of holidays | [optional] 
**accrued_payment_balance** | **Float** | [readonly] The balance of what is owed to this employee in lieu of holidays | [optional] 

