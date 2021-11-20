# SwaggerClient::PayOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**period** | [**PayPeriods**](PayPeriods.md) |  | [optional] 
**ordinal** | **Integer** | Indicates whether to use first, second, third (etc) PaySchedule for this PayPeriod. | [optional] 
**pay_amount** | **Float** | The amount the Employee is regularly paid each period | [optional] 
**basis** | [**PayBasis**](PayBasis.md) |  | [optional] 
**national_minimum_wage** | **BOOLEAN** |  | [optional] 
**pay_amount_multiplier** | **Float** | This property is irrelevant if the basis is Monthly.\\n  But if the basis is Daily or Hourly then this property sets how many days/hours the employee should be paid for in the period. | [optional] 
**base_hourly_rate** | **Float** | This property is used to calculate values for PayCodes that are set as multiples of   the employees base hourly rate. Eg Overtime.\\n  If this is set as zero then we&#x27;ll attempt to calculate a value based on the other fields | [optional] 
**auto_adjust_for_leave** | **BOOLEAN** | Automatically reduce the PayAmount when the Employee has Leave that is either Not Paid or has Statutory Pay.\\n  Can only be set to True if the Basis is Monthly (ie, employee is not paid an hourly or daily rate).\\n  If set to false then you must manually reduce their payment to reflect any Leave | [optional] 
**method** | [**PayMethod**](PayMethod.md) |  | [optional] 
**pay_code** | **String** | If you want the Employees pay to be allocated to a code other than BASIC, specify it here | [optional] 
**withhold_tax_refund_if_pay_is_zero** | **BOOLEAN** | If you don&#x27;t want negative PAYE values when the Gross pay is zero, set this to true | [optional] 
**mileage_vehicle_type** | [**MileageVehicleType**](MileageVehicleType.md) |  | [optional] 
**maps_miles** | **Integer** | The number of miles to pay for as Mileage Allowance Payments | [optional] 
**tax_and_ni** | [**TaxAndNi**](TaxAndNi.md) |  | [optional] 
**fps_fields** | [**FpsFields**](FpsFields.md) |  | [optional] 
**regular_pay_lines** | [**Array&lt;PayLine&gt;**](PayLine.md) | These are used to make additions/deductions to the pay for this Employee.  You do not need to include Pension, Tax, NI,  Loan Repayments, etc as these will all be automatically created. | [optional] 
**tags** | **Array&lt;String&gt;** |  | [optional] 

