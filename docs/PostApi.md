# SwaggerClient::PostApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_post**](PostApi.md#create_post) | **POST** /employers/{employerId}/posts | Create Post
[**delete_post**](PostApi.md#delete_post) | **DELETE** /employers/{employerId}/posts/{id} | Delete Post
[**get_post**](PostApi.md#get_post) | **GET** /employers/{employerId}/posts/{id} | Get Post
[**index_post**](PostApi.md#index_post) | **GET** /employers/{employerId}/posts | List Posts
[**update_post**](PostApi.md#update_post) | **PUT** /employers/{employerId}/posts/{id} | Update Post

# **create_post**
> Post create_post(employer_id, opts)

Create Post

Creates a new Post for the Employer.

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

api_instance = SwaggerClient::PostApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  body: SwaggerClient::Post.new # Post | 
}

begin
  #Create Post
  result = api_instance.create_post(employer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PostApi->create_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **body** | [**Post**](Post.md)|  | [optional] 

### Return type

[**Post**](Post.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



# **delete_post**
> delete_post(employer_id, id)

Delete Post

Deletes the specified Post.

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

api_instance = SwaggerClient::PostApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Delete Post
  api_instance.delete_post(employer_id, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PostApi->delete_post: #{e}"
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



# **get_post**
> Post get_post(employer_id, id)

Get Post

Gets the Post specified.

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

api_instance = SwaggerClient::PostApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer to which the Post belongs.
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Get Post
  result = api_instance.get_post(employer_id, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PostApi->get_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer to which the Post belongs. | 
 **id** | [**String**](.md)|  | 

### Return type

[**Post**](Post.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **index_post**
> Array&lt;Item&gt; index_post(employer_id)

List Posts

Lists all Posts for an Employer.

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

api_instance = SwaggerClient::PostApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Id of the Employer for which you want to list Posts


begin
  #List Posts
  result = api_instance.index_post(employer_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PostApi->index_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)| The Id of the Employer for which you want to list Posts | 

### Return type

[**Array&lt;Item&gt;**](Item.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_post**
> Post update_post(employer_idid, opts)

Update Post

Updates a Post for the Employer.

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

api_instance = SwaggerClient::PostApi.new
employer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  body: SwaggerClient::Post.new # Post | 
}

begin
  #Update Post
  result = api_instance.update_post(employer_idid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PostApi->update_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employer_id** | [**String**](.md)|  | 
 **id** | [**String**](.md)|  | 
 **body** | [**Post**](Post.md)|  | [optional] 

### Return type

[**Post**](Post.md)

### Authorization

[Basic](../README.md#Basic), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json



