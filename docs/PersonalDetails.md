# SwaggerClient::PersonalDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | [**Address**](Address.md) |  | [optional] 
**marital_status** | [**MaritalStatus**](MaritalStatus.md) |  | 
**title** | **String** |  | [optional] 
**first_name** | **String** |  | [optional] 
**middle_name** | **String** |  | [optional] 
**last_name** | **String** |  | [optional] 
**email** | **String** |  | [optional] 
**email_payslip** | **BOOLEAN** | If set to true then the employees Payslip will be sent by email when a PayRun is finalised. | [optional] 
**password_protect_payslip** | **BOOLEAN** | If set to true then when a payslip is sent by email a password will be set on it. | [optional] 
**pdf_password** | **String** | Set the password to be used on PDFs. If blank then we&#x27;ll create a password based on the users name and date of birth. | [optional] 
**email_statement** | **BOOLEAN** | Only applicable to CIS Subcontractors. If set to true then we will automatically email a CIS Statement when a CIS300 is accepted. | [optional] 
**photo_url** | **String** |  | [optional] 
**telephone** | **String** |  | [optional] 
**mobile** | **String** |  | [optional] 
**date_of_birth** | **Date** |  | 
**state_pension_age** | **Integer** | [readonly] Automatically calculated. | [optional] 
**gender** | [**Gender**](Gender.md) |  | 
**ni_number** | **String** |  | [optional] 
**passport_number** | **String** |  | [optional] 
**partner_details** | [**PartnerDetails**](PartnerDetails.md) |  | [optional] 

