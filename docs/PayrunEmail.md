# SwaggerClient::PayrunEmail

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**is_active** | **BOOLEAN** | If false then this email won&#x27;t be sent | [optional] 
**name** | **String** | Only used for reference, not included in the email | 
**template_type** | [**EmployerTemplateType**](EmployerTemplateType.md) |  | [optional] 
**recipient_address** | **String** | The address to which the email should be sent | 
**pdf_password** | **String** | If a value is provided, then all PDFs attached to the email will be encrypted using this password | [optional] 
**attach_payslips** | **BOOLEAN** | If set to true then Payslips will be attached to the email | [optional] 
**payslips_unemailed** | **BOOLEAN** | If AttachPayslips is true and this property is also true then only payslips that haven&#x27;t already been sent directly to employees will be attached. | [optional] 
**payslips_single_file** | **BOOLEAN** | If AttachPayslips is true and this property is also true then the payslips will be attached as a single file rather than as separate PDFs, | [optional] 
**attach_payment_summary** | **BOOLEAN** | If set to True then the PaymentSummary report will be attached to the Email | [optional] 
**attach_p32** | **BOOLEAN** | If set to True then the P32 report will be attached to the email | [optional] 
**attach_p30** | **BOOLEAN** | If set to True then the P30 report will be attached to the email | [optional] 
**attach_gross_to_net** | **BOOLEAN** | If set to True then the GrossToNet report will be attached to the email | [optional] 
**attach_pension_contributions** | **BOOLEAN** | If set to True then the Pensions Contributions report will be attached to the email | [optional] 
**attach_cost_analysis** | **BOOLEAN** | If set to True then the Cost Analysis report will be attached to the email | [optional] 
**attach_cost_of_employment** | **BOOLEAN** | If set to True then the Cost of Employment report will be attached to the email | [optional] 
**attach_full_summary_of_pay** | **BOOLEAN** | If set to True then the Full Summary Of Payment report will be attached to the email | [optional] 
**attach_bank_payments** | **BOOLEAN** | If set to True then the Bank Payments CSV file will be attached to the email | [optional] 
**custom_subject** | **String** | If TemplateType is null then you can provide a subject line here to be used for the email | [optional] 
**custom_body** | **String** | If TemplateType is null then you can provide the body text here to be used for the email | [optional] 
**custom_body_is_html** | **BOOLEAN** | If the CustomBody is in HTML format, set this to true. | [optional] 

