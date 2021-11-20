# SwaggerClient::EmploymentDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cis_sub_contractor** | **BOOLEAN** | Set to True if this Employee is a CIS Subcontractor. The &lt;code&gt;Cis&lt;/code&gt; property contains further information | [optional] 
**payroll_code** | **String** | The Employees Payroll Code. Must be unique within the Employer. | 
**job_title** | **String** | Job Title of Primary post of the Employee | [optional] 
**on_hold** | **BOOLEAN** | Set to true to temporarily exclude the employee from payruns | [optional] 
**on_furlough** | **BOOLEAN** | Set to true if the employee is on furlough. | [optional] 
**furlough_start** | **Date** | Furlough Start Date. | [optional] 
**furlough_end** | **Date** | Furlough End Date. | [optional] 
**furlough_calculation_basis** | [**FurloughCalculationBasis**](FurloughCalculationBasis.md) |  | [optional] 
**furlough_calculation_basis_amount** | **Float** |  | [optional] 
**partial_furlough** | **BOOLEAN** | Set to true if the employee is partially furloughed. | [optional] 
**furlough_hours_normally_worked** | **Float** |  | [optional] 
**furlough_hours_on_furlough** | **Float** |  | [optional] 
**is_apprentice** | **BOOLEAN** | Set to True if this Employee is an apprentice. This affects the calculations for National Minimum Wage | [optional] 
**working_pattern** | **String** | Used when calculating payments for Leave.\\n  If null then the default Working Pattern is used | [optional] 
**force_previous_payroll_code** | **String** | If this property has a non-empty value then a change of Payroll code will be declared on the next FPS. | [optional] 
**starter_details** | [**StarterDetails**](StarterDetails.md) |  | [optional] 
**directorship_details** | [**DirectorshipDetails**](DirectorshipDetails.md) |  | [optional] 
**leaver_details** | [**LeaverDetails**](LeaverDetails.md) |  | [optional] 
**cis** | [**CisDetails**](CisDetails.md) |  | [optional] 
**department** | [**Department**](Department.md) |  | [optional] 
**posts** | [**Array&lt;Item&gt;**](Item.md) | List of Posts held by Employee | [optional] 

