# SwaggerClient::MailSettings

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender_name** | **String** |  | 
**sender_email** | **String** |  | 
**use_system_from_address** | **BOOLEAN** | If set to true then the SenderEmail provided will only be used in the   ReplyTo fields. The system defaults will be used for the From address. | [optional] 
**sender_email_verified** | **BOOLEAN** | [readonly] The SenderEmail must be verified before you can send email using that address | [optional] 
**customise_smtp_settings** | **BOOLEAN** |  | 
**smtp_settings** | [**SmtpSettings**](SmtpSettings.md) |  | [optional] 
**customise_html_email_settings** | **BOOLEAN** |  | 
**html_email_settings** | [**HtmlEmailSettings**](HtmlEmailSettings.md) |  | [optional] 
**id** | **String** | [readonly] The unique id of the object | [optional] 

