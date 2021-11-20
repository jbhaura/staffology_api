# SwaggerClient::PayCode

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** |  | 
**code** | **String** |  | 
**default_value** | **Float** | If a non-zero value is provided then when this code is selected in our UI the value will be automatically filled. | [optional] 
**is_deduction** | **BOOLEAN** | If set to true then a PayLine using this code will be treated as a deduction as opposed to an addition. | [optional] 
**is_niable** | **BOOLEAN** | Determines whether or not the value of PayLines using this code should be taken into consideration when calculating National Insurance Contributions. | [optional] 
**is_taxable** | **BOOLEAN** | Determines whether or not the value of PayLines using this code should be taken into consideration when calculating the PAYE liability. | [optional] 
**is_pensionable** | **BOOLEAN** | Determines whether or not the value of PayLines using this code should be taken into consideration when calculating the total pensionable pay. | [optional] 
**is_attachable** | **BOOLEAN** | Determines whether or not the value of PayLines using this code should be taken into consideration when calculating the attachable pay for AttachmentOrders. | [optional] 
**is_real_time_class1a_niable** | **BOOLEAN** | Determines whether or not the value of PayLines using this code are subject to real time Class 1A NIC. | [optional] 
**is_not_contributing_to_holiday_pay** | **BOOLEAN** | If true then any payments made using this code will not contribute towards holiday pay calculations. | [optional] 
**is_qualifying_earnings_for_ae** | **BOOLEAN** | If true then any payments made using this code will be used as the basis for calculating QualifyingEarnings for AutoEnrolment assessments.\\n  If it is set to null then when it&#x27;s next retrieved it&#x27;ll have the same value as PensionablePay | [optional] 
**is_not_tierable** | **BOOLEAN** | If true then any payments made using this code will not be included when calculating the tier an employee should be on for a Tiered Pension. | [optional] 
**is_tcp_tcls** | **BOOLEAN** | If true then any payments made using this code will be reported as  a Trivial Commutation Payment (A - TCLS) | [optional] 
**is_tcp_pp** | **BOOLEAN** | If true then any payments made using this code will be reported as  a Trivial Commutation Payment (B - Personal Pension) | [optional] 
**is_tcp_op** | **BOOLEAN** | If true then any payments made using this code will be reported as  a Trivial Commutation Payment (C - Occupational Pension) | [optional] 
**is_flexi_dd_death_benefit** | **BOOLEAN** | If true then any payments made using this code will be reported as  a Flexible Drawdown of Death Benefit | [optional] 
**is_flexi_dd_pension** | **BOOLEAN** | If true then any payments made using this code will be reported as  a Flexible Drawdown flexibly accessing a pension | [optional] 
**calculation_type** | [**PayCodeCalculationType**](PayCodeCalculationType.md) |  | [optional] 
**multiplier_type** | [**PayCodeMultiplierType**](PayCodeMultiplierType.md) |  | [optional] 
**hourly_rate_multiplier** | **Float** | If the MultiplierType is MultipleOfHourlyRate then this sets the multiple to be used, ie 1.5 | [optional] 
**is_system_code** | **BOOLEAN** | [readonly] System Codes cannot be deleted or edited | [optional] 
**is_control_code** | **BOOLEAN** | [readonly] Control Codes cannot be deleted or edited nor can PayLines be assigned to them. | [optional] 

