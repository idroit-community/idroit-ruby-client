# SwaggerClient::UsersApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**users_controller_create**](UsersApi.md#users_controller_create) | **POST** /api/v1/users | ユーザーアカウント作成
[**users_controller_export_key**](UsersApi.md#users_controller_export_key) | **POST** /api/v1/users/{id}/keys/{keyId}/mail | アカウントへの鍵のメール送信
[**users_controller_find_all**](UsersApi.md#users_controller_find_all) | **GET** /api/v1/users | ユーザーアカウント一覧取得
[**users_controller_find_one**](UsersApi.md#users_controller_find_one) | **GET** /api/v1/users/{id} | ユーザーアカウント詳細取得
[**users_controller_invite**](UsersApi.md#users_controller_invite) | **POST** /api/v1/users/{id}/invite | ユーザーアカウントへのアカウント有効化メール送信
[**users_controller_register_user_did**](UsersApi.md#users_controller_register_user_did) | **POST** /api/v1/users/{id}/dids | Get the count of clients
[**users_controller_registration**](UsersApi.md#users_controller_registration) | **POST** /api/v1/users/registration | ユーザーアカウントへのアカウント有効化、登録フロー
[**users_controller_remove**](UsersApi.md#users_controller_remove) | **DELETE** /api/v1/users/{id} | ユーザーアカウント停止
[**users_controller_send_did**](UsersApi.md#users_controller_send_did) | **POST** /api/v1/users/{id}/dids/{didInfoId}/mail | アカウントへのDIDのメール送信
[**users_controller_send_key**](UsersApi.md#users_controller_send_key) | **POST** /api/v1/users/{id}/keys/{didInfoId}/mail | アカウントへのDIDのメール送信
[**users_controller_send_vc**](UsersApi.md#users_controller_send_vc) | **POST** /api/v1/users/{id}/vcs/{vcInfoId}/mail | アカウントへのVCのメール送信
[**users_controller_update**](UsersApi.md#users_controller_update) | **PUT** /api/v1/users/{id} | ユーザーアカウント更新

# **users_controller_create**
> UserResponseDto users_controller_create(body)

ユーザーアカウント作成

新規ユーザーアカウントを作成します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::UsersApi.new
body = SwaggerClient::CreateUserDto.new # CreateUserDto | 


begin
  #ユーザーアカウント作成
  result = api_instance.users_controller_create(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->users_controller_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateUserDto**](CreateUserDto.md)|  | 

### Return type

[**UserResponseDto**](UserResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **users_controller_export_key**
> users_controller_export_key(id, key_id)

アカウントへの鍵のメール送信

クライアントアカウントに紐付いたDIDの鍵情報をメールで送信し、共有します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::UsersApi.new
id = 'id_example' # String | 
key_id = 'key_id_example' # String | 


begin
  #アカウントへの鍵のメール送信
  api_instance.users_controller_export_key(id, key_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->users_controller_export_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **key_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **users_controller_find_all**
> UsersResponseDto users_controller_find_all(opts)

ユーザーアカウント一覧取得

ユーザーアカウントを一覧として値を返します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::UsersApi.new
opts = { 
  page: SwaggerClient::BigDecimal.new, # BigDecimal | (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1)
  limit: SwaggerClient::BigDecimal.new, # BigDecimal | (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10)
  name: 'name_example', # String | (任意) 例: \"Jhon Doe\"
  email: 'email_example', # String | (任意) 例: \"client1@email.com\"
  status: 'status_example', # String | (任意) 例: \"active\"
  role: 'role_example', # String | (任意) 例: \"client\"
  need_activate_flow: true # BOOLEAN | (任意) 例: true, false
}

begin
  #ユーザーアカウント一覧取得
  result = api_instance.users_controller_find_all(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->users_controller_find_all: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **BigDecimal**| (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1) | [optional] 
 **limit** | **BigDecimal**| (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10) | [optional] 
 **name** | **String**| (任意) 例: \&quot;Jhon Doe\&quot; | [optional] 
 **email** | **String**| (任意) 例: \&quot;client1@email.com\&quot; | [optional] 
 **status** | **String**| (任意) 例: \&quot;active\&quot; | [optional] 
 **role** | **String**| (任意) 例: \&quot;client\&quot; | [optional] 
 **need_activate_flow** | **BOOLEAN**| (任意) 例: true, false | [optional] 

### Return type

[**UsersResponseDto**](UsersResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **users_controller_find_one**
> UserResponseDto users_controller_find_one(id)

ユーザーアカウント詳細取得

リクエストパラメータのidで指定された単一の管理者アカウントの詳細情報の値を返します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::UsersApi.new
id = 'id_example' # String | 


begin
  #ユーザーアカウント詳細取得
  result = api_instance.users_controller_find_one(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->users_controller_find_one: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**UserResponseDto**](UserResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **users_controller_invite**
> users_controller_invite(id)

ユーザーアカウントへのアカウント有効化メール送信

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::UsersApi.new
id = 'id_example' # String | 


begin
  #ユーザーアカウントへのアカウント有効化メール送信
  api_instance.users_controller_invite(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->users_controller_invite: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **users_controller_register_user_did**
> users_controller_register_user_did(bodyid)

Get the count of clients

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::UsersApi.new
body = SwaggerClient::GenerateDidDto.new # GenerateDidDto | 
id = 'id_example' # String | 


begin
  #Get the count of clients
  api_instance.users_controller_register_user_did(bodyid)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->users_controller_register_user_did: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GenerateDidDto**](GenerateDidDto.md)|  | 
 **id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **users_controller_registration**
> users_controller_registration(bodytoken)

ユーザーアカウントへのアカウント有効化、登録フロー

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::UsersApi.new
body = SwaggerClient::RegistrationProcessDto.new # RegistrationProcessDto | 
token = 'token_example' # String | 


begin
  #ユーザーアカウントへのアカウント有効化、登録フロー
  api_instance.users_controller_registration(bodytoken)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->users_controller_registration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RegistrationProcessDto**](RegistrationProcessDto.md)|  | 
 **token** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **users_controller_remove**
> users_controller_remove(id)

ユーザーアカウント停止

リクエストパラメータのidで指定された単一のユーザーアカウントを停止します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::UsersApi.new
id = 'id_example' # String | 


begin
  #ユーザーアカウント停止
  api_instance.users_controller_remove(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->users_controller_remove: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **users_controller_send_did**
> users_controller_send_did(id, did_info_id)

アカウントへのDIDのメール送信

アカウントに紐付いたDIDをメールで送信し、共有します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::UsersApi.new
id = 'id_example' # String | 
did_info_id = 'did_info_id_example' # String | 


begin
  #アカウントへのDIDのメール送信
  api_instance.users_controller_send_did(id, did_info_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->users_controller_send_did: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **did_info_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **users_controller_send_key**
> users_controller_send_key(id, did_info_id)

アカウントへのDIDのメール送信

アカウントに紐付いたDIDをメールで送信し、共有します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::UsersApi.new
id = 'id_example' # String | 
did_info_id = 'did_info_id_example' # String | 


begin
  #アカウントへのDIDのメール送信
  api_instance.users_controller_send_key(id, did_info_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->users_controller_send_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **did_info_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **users_controller_send_vc**
> users_controller_send_vc(id, vc_info_id)

アカウントへのVCのメール送信

アカウントに紐付いたVCをメールで送信し、共有します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::UsersApi.new
id = 'id_example' # String | 
vc_info_id = 'vc_info_id_example' # String | 


begin
  #アカウントへのVCのメール送信
  api_instance.users_controller_send_vc(id, vc_info_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->users_controller_send_vc: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **vc_info_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **users_controller_update**
> UserResponseDto users_controller_update(bodyid)

ユーザーアカウント更新

リクエストパラメータのidで指定された単一のユーザーアカウント情報を更新します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::UsersApi.new
body = SwaggerClient::CreateUserDto.new # CreateUserDto | 
id = 'id_example' # String | 


begin
  #ユーザーアカウント更新
  result = api_instance.users_controller_update(bodyid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->users_controller_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateUserDto**](CreateUserDto.md)|  | 
 **id** | **String**|  | 

### Return type

[**UserResponseDto**](UserResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



