# SwaggerClient::AuditApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**employer_audit_list_audit**](AuditApi.md#employer_audit_list_audit) | **GET** /employers/{employerId}/audit | Employer Audit Log
[**get_audit**](AuditApi.md#get_audit) | **GET** /employers/{employerId}/audit/{id} | Get Audit entry

# **employer_audit_list_audit**
> Array&lt;Item&gt; employer_audit_list_audit(employer_id, opts)

Employer Audit Log

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AuditApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer for which you want to list Audit logs
opts = { 
  entity: SwaggerClient::AuditEntityType.new, # AuditEntityType | Entity type name for which audit log should be retrieved
  entity_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | Id of the entity for which audit log should be retrieved
  from_date: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Date from which records should be retrieved
  to_date: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Date till records should be retrieved
  page_num: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  #Employer Audit Log
  result = api_instance.employer_audit_list_audit(employer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuditApi->employer_audit_list_audit: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer for which you want to list Audit logs | 
 **entity** | [**AuditEntityType**](.md)| Entity type name for which audit log should be retrieved | [optional] 
 **entity_id** | [**String**](.md)| Id of the entity for which audit log should be retrieved | [optional] 
 **from_date** | **DateTime**| Date from which records should be retrieved | [optional] 
 **to_date** | **DateTime**| Date till records should be retrieved | [optional] 
 **page_num** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_audit**
> AuditEntryInfo get_audit(employer_id, id, opts)

Get Audit entry

Gets the Audit entry specified

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AuditApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  audit_entity_type: SwaggerClient::AuditEntityType.new # AuditEntityType | 
}

begin
  #Get Audit entry
  result = api_instance.get_audit(employer_id, id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuditApi->get_audit: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)|  | 
 **audit_entity_type** | [**AuditEntityType**](.md)|  | [optional] 

### Return type

[**AuditEntryInfo**](AuditEntryInfo.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



