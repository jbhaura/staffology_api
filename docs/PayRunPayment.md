# SwaggerClient::PayRunPayment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**PayeeType**](PayeeType.md) |  | [optional] 
**payee** | [**Item**](Item.md) |  | [optional] 
**date** | **Date** | [readonly] The date the payment is to be made | [optional] 
**method** | [**PayMethod**](PayMethod.md) |  | [optional] 
**amount** | **Float** | [readonly] The amount to pay | [optional] 
**reference** | **String** | [readonly] The period the payment is for | [optional] 
**bank_details** | [**BankDetails**](BankDetails.md) |  | [optional] 
**bacs_hash** | **String** | [readonly] if paying by Credit and you&#x27;ve enabled BacsHash then this will contain the BacsHash included on the FPS | [optional] 
**bacs_sub_reference** | **String** | [readonly] if paying by Credit and you&#x27;ve enabled BacsHash then this will contain the BacsSubReference included on the FPS | [optional] 

