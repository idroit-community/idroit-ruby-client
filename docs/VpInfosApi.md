# SwaggerClient::VpInfosApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**vp_infos_controller_add_label**](VpInfosApi.md#vp_infos_controller_add_label) | **PUT** /api/v1/vp-infos/{id}/label | VP情報へのラベル追加
[**vp_infos_controller_connect_user**](VpInfosApi.md#vp_infos_controller_connect_user) | **PUT** /api/v1/vp-infos/{id} | VP情報へのクライアントアカウント紐付け
[**vp_infos_controller_create**](VpInfosApi.md#vp_infos_controller_create) | **POST** /api/v1/vp-infos | 新規VP生成
[**vp_infos_controller_disconnect_user**](VpInfosApi.md#vp_infos_controller_disconnect_user) | **DELETE** /api/v1/vp-infos/{id}/user | VP情報のクライアントアカウント紐付け解除
[**vp_infos_controller_find_all**](VpInfosApi.md#vp_infos_controller_find_all) | **GET** /api/v1/vp-infos | VP情報一覧取得
[**vp_infos_controller_find_one**](VpInfosApi.md#vp_infos_controller_find_one) | **GET** /api/v1/vp-infos/{id} | VP情報詳細取得
[**vp_infos_controller_upload**](VpInfosApi.md#vp_infos_controller_upload) | **POST** /api/v1/vp-infos/upload | 新規VPアップロード

# **vp_infos_controller_add_label**
> VpInfoResponseDto vp_infos_controller_add_label(bodyid)

VP情報へのラベル追加

リクエストパラメータのidで指定された単一のVP情報に対して、任意の管理用ラベルを追加します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::VpInfosApi.new
body = SwaggerClient::AddLabelToVpInfoDto.new # AddLabelToVpInfoDto | 
id = 'id_example' # String | 


begin
  #VP情報へのラベル追加
  result = api_instance.vp_infos_controller_add_label(bodyid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VpInfosApi->vp_infos_controller_add_label: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AddLabelToVpInfoDto**](AddLabelToVpInfoDto.md)|  | 
 **id** | **String**|  | 

### Return type

[**VpInfoResponseDto**](VpInfoResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **vp_infos_controller_connect_user**
> vp_infos_controller_connect_user(bodyid)

VP情報へのクライアントアカウント紐付け

VP情報の所有者、関係者などの管理者としてクライアントアカウントを紐付けます。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::VpInfosApi.new
body = SwaggerClient::UpdateVcInfoDto.new # UpdateVcInfoDto | 
id = 'id_example' # String | 


begin
  #VP情報へのクライアントアカウント紐付け
  api_instance.vp_infos_controller_connect_user(bodyid)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VpInfosApi->vp_infos_controller_connect_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateVcInfoDto**](UpdateVcInfoDto.md)|  | 
 **id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **vp_infos_controller_create**
> vp_infos_controller_create(body)

新規VP生成

新規VPを生成します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::VpInfosApi.new
body = SwaggerClient::CreateVpInfoDto.new # CreateVpInfoDto | 


begin
  #新規VP生成
  api_instance.vp_infos_controller_create(body)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VpInfosApi->vp_infos_controller_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateVpInfoDto**](CreateVpInfoDto.md)|  | 

### Return type

nil (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **vp_infos_controller_disconnect_user**
> vp_infos_controller_disconnect_user(id)

VP情報のクライアントアカウント紐付け解除

VP情報に紐付いたクライアントアカウントの紐付けを解除します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::VpInfosApi.new
id = 'id_example' # String | 


begin
  #VP情報のクライアントアカウント紐付け解除
  api_instance.vp_infos_controller_disconnect_user(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VpInfosApi->vp_infos_controller_disconnect_user: #{e}"
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



# **vp_infos_controller_find_all**
> VpInfoResponseDto vp_infos_controller_find_all(opts)

VP情報一覧取得

アプリケーションが管理するVP情報を一覧として値を返します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::VpInfosApi.new
opts = { 
  page: SwaggerClient::BigDecimal.new, # BigDecimal | (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1)
  limit: SwaggerClient::BigDecimal.new, # BigDecimal | (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10)
  label: 'label_example', # String | (任意) 例: \"vc-for-project1\"
  description: 'description_example' # String | (任意) 
}

begin
  #VP情報一覧取得
  result = api_instance.vp_infos_controller_find_all(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VpInfosApi->vp_infos_controller_find_all: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **BigDecimal**| (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1) | [optional] 
 **limit** | **BigDecimal**| (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10) | [optional] 
 **label** | **String**| (任意) 例: \&quot;vc-for-project1\&quot; | [optional] 
 **description** | **String**| (任意)  | [optional] 

### Return type

[**VpInfoResponseDto**](VpInfoResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **vp_infos_controller_find_one**
> VpInfoDetailDto vp_infos_controller_find_one(id)

VP情報詳細取得

リクエストパラメータのidで指定された単一のVP情報の詳細情報の値を返します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::VpInfosApi.new
id = 'id_example' # String | 


begin
  #VP情報詳細取得
  result = api_instance.vp_infos_controller_find_one(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VpInfosApi->vp_infos_controller_find_one: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**VpInfoDetailDto**](VpInfoDetailDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **vp_infos_controller_upload**
> VpInfoResponseDto vp_infos_controller_upload(credential_objectlabeldescription)

新規VPアップロード

外部で発行された既存VPをアップロードし、本アプリケーションに保存します。。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::VpInfosApi.new
credential_object = nil # Object | 
label = 'label_example' # String | 
description = 'description_example' # String | 


begin
  #新規VPアップロード
  result = api_instance.vp_infos_controller_upload(credential_objectlabeldescription)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VpInfosApi->vp_infos_controller_upload: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credential_object** | [**Object**](.md)|  | 
 **label** | **String**|  | 
 **description** | **String**|  | 

### Return type

[**VpInfoResponseDto**](VpInfoResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



