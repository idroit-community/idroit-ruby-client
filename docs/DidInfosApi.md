# SwaggerClient::DidInfosApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**did_infos_controller_add_label**](DidInfosApi.md#did_infos_controller_add_label) | **PUT** /api/v1/did-infos/{id} | DID情報へのラベル追加
[**did_infos_controller_connect_user**](DidInfosApi.md#did_infos_controller_connect_user) | **PUT** /api/v1/did-infos/{id}/user/{user_id} | DID情報へのクライアントアカウント紐付け
[**did_infos_controller_create**](DidInfosApi.md#did_infos_controller_create) | **POST** /api/v1/did-infos | 新規DID生成
[**did_infos_controller_disconnect_user**](DidInfosApi.md#did_infos_controller_disconnect_user) | **DELETE** /api/v1/did-infos/{id}/user | DID情報のクライアントアカウント紐付け解除
[**did_infos_controller_find_all**](DidInfosApi.md#did_infos_controller_find_all) | **GET** /api/v1/did-infos | DID情報一覧取得
[**did_infos_controller_find_one**](DidInfosApi.md#did_infos_controller_find_one) | **GET** /api/v1/did-infos/{id} | DID情報詳細取得
[**did_infos_controller_register**](DidInfosApi.md#did_infos_controller_register) | **POST** /api/v1/did-infos/register | 既存DID登録
[**did_infos_controller_remove**](DidInfosApi.md#did_infos_controller_remove) | **DELETE** /api/v1/did-infos/{id} | DID情報削除
[**did_infos_controller_resolve**](DidInfosApi.md#did_infos_controller_resolve) | **POST** /api/v1/did-infos/resolver | DID解決

# **did_infos_controller_add_label**
> DidInfoResponseDto did_infos_controller_add_label(bodyid)

DID情報へのラベル追加

リクエストパラメータのidで指定された単一のDID情報に対して、任意の管理用ラベルを追加します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::DidInfosApi.new
body = SwaggerClient::AddLabelToDidInfoDto.new # AddLabelToDidInfoDto | 
id = 'id_example' # String | 


begin
  #DID情報へのラベル追加
  result = api_instance.did_infos_controller_add_label(bodyid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DidInfosApi->did_infos_controller_add_label: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AddLabelToDidInfoDto**](AddLabelToDidInfoDto.md)|  | 
 **id** | **String**|  | 

### Return type

[**DidInfoResponseDto**](DidInfoResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **did_infos_controller_connect_user**
> DidInfoResponseDto did_infos_controller_connect_user(id, user_id)

DID情報へのクライアントアカウント紐付け

DID情報の所有者、関係者などの管理者としてクライアントアカウントを紐付けます。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::DidInfosApi.new
id = 'id_example' # String | 
user_id = 'user_id_example' # String | 


begin
  #DID情報へのクライアントアカウント紐付け
  result = api_instance.did_infos_controller_connect_user(id, user_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DidInfosApi->did_infos_controller_connect_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **user_id** | **String**|  | 

### Return type

[**DidInfoResponseDto**](DidInfoResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **did_infos_controller_create**
> did_infos_controller_create(body)

新規DID生成

新規DIDを生成します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::DidInfosApi.new
body = SwaggerClient::CreateDidDto.new # CreateDidDto | 


begin
  #新規DID生成
  api_instance.did_infos_controller_create(body)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DidInfosApi->did_infos_controller_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateDidDto**](CreateDidDto.md)|  | 

### Return type

nil (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **did_infos_controller_disconnect_user**
> did_infos_controller_disconnect_user(id)

DID情報のクライアントアカウント紐付け解除

DID情報に紐付いたクライアントアカウントの紐付けを解除します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::DidInfosApi.new
id = 'id_example' # String | 


begin
  #DID情報のクライアントアカウント紐付け解除
  api_instance.did_infos_controller_disconnect_user(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DidInfosApi->did_infos_controller_disconnect_user: #{e}"
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
 - **Accept**: Not defined



# **did_infos_controller_find_all**
> DidInfosResponseDto did_infos_controller_find_all(opts)

DID情報一覧取得

アプリケーションが管理するDID情報を一覧として値を返します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::DidInfosApi.new
opts = { 
  page: SwaggerClient::BigDecimal.new, # BigDecimal | (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1)
  limit: SwaggerClient::BigDecimal.new, # BigDecimal | (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10)
  did: 'did_example', # String | (任意) 例: \"did:key:z6MkhGeGj7u5htkCYjE4PaQ8HUqjYyTmxpDb6Q1MqUpUDsN7\"
  manage_uuid: 'manage_uuid_example', # String | (任意) 例: \"32bad62a-4186-4d04-a26a-fcee79d5824b\"
  label: 'label_example', # String | (任意) 例: \"did-for-project1\"
  method: 'method_example', # String | (任意) 例: \"did:key
  exist_private_key: true, # BOOLEAN | (任意) 例: true
  description: 'description_example', # String | (任意) 
  domain_name: 'domain_name_example' # String | (任意) 例: \"did:web:idroit-dashboard.com\"
}

begin
  #DID情報一覧取得
  result = api_instance.did_infos_controller_find_all(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DidInfosApi->did_infos_controller_find_all: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **BigDecimal**| (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1) | [optional] 
 **limit** | **BigDecimal**| (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10) | [optional] 
 **did** | **String**| (任意) 例: \&quot;did:key:z6MkhGeGj7u5htkCYjE4PaQ8HUqjYyTmxpDb6Q1MqUpUDsN7\&quot; | [optional] 
 **manage_uuid** | **String**| (任意) 例: \&quot;32bad62a-4186-4d04-a26a-fcee79d5824b\&quot; | [optional] 
 **label** | **String**| (任意) 例: \&quot;did-for-project1\&quot; | [optional] 
 **method** | **String**| (任意) 例: \&quot;did:key | [optional] 
 **exist_private_key** | **BOOLEAN**| (任意) 例: true | [optional] 
 **description** | **String**| (任意)  | [optional] 
 **domain_name** | **String**| (任意) 例: \&quot;did:web:idroit-dashboard.com\&quot; | [optional] 

### Return type

[**DidInfosResponseDto**](DidInfosResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **did_infos_controller_find_one**
> DidInfoResponseDto did_infos_controller_find_one(id)

DID情報詳細取得

リクエストパラメータのidで指定された単一のDID情報の詳細情報の値を返します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::DidInfosApi.new
id = 'id_example' # String | 


begin
  #DID情報詳細取得
  result = api_instance.did_infos_controller_find_one(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DidInfosApi->did_infos_controller_find_one: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**DidInfoResponseDto**](DidInfoResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **did_infos_controller_register**
> did_infos_controller_register(body)

既存DID登録

外部で生成されたDIDを本アプリケーションに取り込みます。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::DidInfosApi.new
body = SwaggerClient::RegisterDidDto.new # RegisterDidDto | 


begin
  #既存DID登録
  api_instance.did_infos_controller_register(body)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DidInfosApi->did_infos_controller_register: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RegisterDidDto**](RegisterDidDto.md)|  | 

### Return type

nil (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **did_infos_controller_remove**
> did_infos_controller_remove(id)

DID情報削除

リクエストパラメータのidで指定された単一のDID情報を削除します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::DidInfosApi.new
id = 'id_example' # String | 


begin
  #DID情報削除
  api_instance.did_infos_controller_remove(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DidInfosApi->did_infos_controller_remove: #{e}"
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
 - **Accept**: Not defined



# **did_infos_controller_resolve**
> ResolveDidResponseDto did_infos_controller_resolve(body)

DID解決

DIDを解決した結果であるDID Documentの値を返します。このAPIでは保存などの処理を行いません。生成済みのDIDを保存したい場合、既存DID登録API(/did-infos/register)にリクエストを送信してください。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::DidInfosApi.new
body = SwaggerClient::ResolveDidDto.new # ResolveDidDto | 


begin
  #DID解決
  result = api_instance.did_infos_controller_resolve(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DidInfosApi->did_infos_controller_resolve: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ResolveDidDto**](ResolveDidDto.md)|  | 

### Return type

[**ResolveDidResponseDto**](ResolveDidResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



