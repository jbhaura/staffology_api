# SwaggerClient::BenefitDetailsCar

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**make_and_model** | **String** |  | [optional] 
**registration** | **String** |  | [optional] 
**first_registered** | **Date** |  | [optional] 
**has_approved_emissions_value** | **BOOLEAN** |  | [optional] 
**co2_emissions** | **Integer** |  | [optional] 
**engine_size** | **Integer** |  | [optional] 
**zero_emissions_mileage** | **Integer** |  | [optional] 
**fuel_type** | [**BenefitDetailsCarPowerType**](BenefitDetailsCarPowerType.md) |  | [optional] 
**available_from** | **Date** |  | [optional] 
**available_to** | **Date** |  | [optional] 
**days_unavailable** | **Integer** |  | [optional] 
**list_price** | **Float** |  | [optional] 
**non_standard_accessories** | **Float** |  | [optional] 
**employee_capital_contributions** | **Float** |  | [optional] 
**employee_private_contributions** | **Float** |  | [optional] 
**free_fuel** | **BOOLEAN** |  | [optional] 
**fuel_available_from** | **Date** |  | [optional] 
**fuel_available_to** | **Date** |  | [optional] 
**free_fuel_reinstated** | **BOOLEAN** |  | [optional] 
**registered_prior_to1998** | **BOOLEAN** | [readonly] | [optional] 
**rate** | **Float** | [readonly] The applicable rate based on CO2Emissions and Engine Size | [optional] 
**chargeable_value** | **Float** | [readonly] The chargeable value of the car | [optional] 
**full_year_charge** | **Float** | [readonly] The charge for the car for a full year, not taking in to account available dates or EmployeePrivateContributions | [optional] 
**cash_equivalent** | **Float** | [readonly] | [optional] 
**cash_equivalent_fuel** | **Float** | [readonly] | [optional] 

