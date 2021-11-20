# SwaggerClient::PayslipCustomisation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**custom** | **BOOLEAN** | Whether or not you are customising the Payslip.\\nThis should always be true if you are providing any other values. | [optional] 
**include_logo** | **BOOLEAN** | Whether or not to include the employer logo on the payslip. | [optional] 
**custom_css_option** | [**ReportCustomCssOption**](ReportCustomCssOption.md) |  | [optional] 
**custom_css** | **String** |  | [optional] 
**remove_ytd** | **BOOLEAN** | Whether or not to remove the YTD column | [optional] 
**include_employer_address** | **BOOLEAN** | Whether or not to include the employer address | [optional] 
**use_umbrella_format** | **BOOLEAN** | If true then the format the payslip will include details of the Umbrella Payment as well as employer costs | [optional] 
**filename** | **String** |  | [optional] 
**paper_size** | [**PdfPaperSize**](PdfPaperSize.md) |  | [optional] 
**orientation** | [**PdfPaperOrientation**](PdfPaperOrientation.md) |  | [optional] 
**margins** | [**PdfPaperMargins**](PdfPaperMargins.md) |  | [optional] 
**id** | **String** | [readonly] The unique id of the object | [optional] 

