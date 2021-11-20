# SwaggerClient::InvitationApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accept_invitation**](InvitationApi.md#accept_invitation) | **POST** /invitations/{id} | Accept Invitation
[**create_invitation**](InvitationApi.md#create_invitation) | **POST** /employers/{employerId}/invitation | Create Invitation
[**delete_invitation**](InvitationApi.md#delete_invitation) | **DELETE** /employers/{employerId}/invitation/{id} | Delete Invitation
[**get_invitation**](InvitationApi.md#get_invitation) | **GET** /employers/{employerId}/invitation/{id} | Get Invitation
[**index_invitation**](InvitationApi.md#index_invitation) | **GET** /employers/{employerId}/invitation | List Invitations

# **accept_invitation**
> accept_invitation(id, opts)

Accept Invitation

Accepts the Invitation.\\n  The user making this API call must have the email address that the invite was created for and the email address must be verified.

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

api_instance = SwaggerClient::InvitationApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  accept_invitation: true # BOOLEAN | Set to true to accept the invitation or false to decline it.
}

begin
  #Accept Invitation
  api_instance.accept_invitation(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvitationApi->accept_invitation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **accept_invitation** | **BOOLEAN**| Set to true to accept the invitation or false to decline it. | [optional] 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **create_invitation**
> Invitation create_invitation(employer_id, opts)

Create Invitation

Creates a new Invitation for the Employer.

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

api_instance = SwaggerClient::InvitationApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  body: SwaggerClient::Invitation.new # Invitation | 
}

begin
  #Create Invitation
  result = api_instance.create_invitation(employer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvitationApi->create_invitation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **body** | [**Invitation**](Invitation.md)|  | [optional] 

### Return type

[**Invitation**](Invitation.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **delete_invitation**
> delete_invitation(employer_id, id)

Delete Invitation

Deletes the specified Invitation.

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

api_instance = SwaggerClient::InvitationApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Delete Invitation
  api_instance.delete_invitation(employer_id, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvitationApi->delete_invitation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)|  | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_invitation**
> Invitation get_invitation(employer_id, id)

Get Invitation

Gets the Invitation specified.

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

api_instance = SwaggerClient::InvitationApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the Invitation belongs.
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Get Invitation
  result = api_instance.get_invitation(employer_id, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvitationApi->get_invitation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the Invitation belongs. | 
 **id** | [**String**](.md)|  | 

### Return type

[**Invitation**](Invitation.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **index_invitation**
> Array&lt;Item&gt; index_invitation(employer_id)

List Invitations

Lists all Invitations for an Employer.\\n  Only unaccepted Invitations are listed as they are deleted once they've been accepted.

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

api_instance = SwaggerClient::InvitationApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer for which you want to list Pay Codes


begin
  #List Invitations
  result = api_instance.index_invitation(employer_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvitationApi->index_invitation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer for which you want to list Pay Codes | 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



