# SwaggerClient::PensionProvider

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | 
**account_no** | **String** |  | [optional] 
**portal** | **String** |  | [optional] 
**website** | **String** |  | [optional] 
**address** | [**Address**](Address.md) |  | [optional] 
**telephone** | **String** |  | [optional] 
**papdis_version** | [**PapdisVersion**](PapdisVersion.md) |  | [optional] 
**papdis_provider_id** | **String** |  | [optional] 
**papdis_employer_id** | **String** |  | [optional] 
**csv_format** | [**PensionCsvFormat**](PensionCsvFormat.md) |  | [optional] 
**exclude_nil_paid_from_contributions** | **BOOLEAN** | If we&#x27;re sending contributions to an external provider then we&#x27;ll include all employees that were on the payrun.  If you want to exclude employees that don&#x27;t have any contributions to report then set this to true. | [optional] 
**pay_period_date_adjustment** | **Integer** | If you need to adjust the reported dates of the contributions then you can do so by setting a non-zero value here.  A negative value of will move the date back in time. | [optional] 
**misc_boolean1** | **BOOLEAN** | This field has different uses dependent on the ExternalDataProvider, if any.\\n  For Nest, it indicates whether or not contributions are reported as \&quot;Tax Weekly/Monthly\&quot; rather than just \&quot;Weekly/Monthly\&quot; | [optional] 
**misc_boolean2** | **BOOLEAN** | This field has different uses dependent on the ExternalDataProvider, if any.\\n  For Nest, it indicates whether or not to approve payments after submitting contributions | [optional] 
**misc_string1** | **String** | This field has different uses dependent on the ExternalDataProvider, if any.\\n  For Nest, it dictates the PaymentSource. | [optional] 
**misc_string2** | **String** | This field has different uses dependent on the ExternalDataProvider, if any. | [optional] 
**opt_out_window** | **Integer** | The number of days or months that an employee has to Opt out after being enrolled | [optional] 
**opt_out_window_is_months** | **BOOLEAN** | Determines whether the value given for OptOutWindow is in Months (true) or days (false) | [optional] 
**id** | **String** | [readonly] The unique id of the object | [optional] 

