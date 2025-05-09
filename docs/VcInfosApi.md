# SwaggerClient::VcInfosApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**vc_infos_controller_add_label**](VcInfosApi.md#vc_infos_controller_add_label) | **PUT** /api/v1/vc-infos/{id}/label | VC情報へのラベル追加
[**vc_infos_controller_connect_user**](VcInfosApi.md#vc_infos_controller_connect_user) | **PUT** /api/v1/vc-infos/{id} | VC情報へのクライアントアカウント紐付け
[**vc_infos_controller_create**](VcInfosApi.md#vc_infos_controller_create) | **POST** /api/v1/vc-infos | 新規VC発行
[**vc_infos_controller_disconnect_user**](VcInfosApi.md#vc_infos_controller_disconnect_user) | **DELETE** /api/v1/vc-infos/{id}/user | VC情報のクライアントアカウント紐付け解除
[**vc_infos_controller_find_all**](VcInfosApi.md#vc_infos_controller_find_all) | **GET** /api/v1/vc-infos | VC情報一覧取得
[**vc_infos_controller_find_one**](VcInfosApi.md#vc_infos_controller_find_one) | **GET** /api/v1/vc-infos/{id} | VC情報詳細取得
[**vc_infos_controller_generate_vp**](VcInfosApi.md#vc_infos_controller_generate_vp) | **POST** /api/v1/vc-infos/{id} | 新規VP情報生成
[**vc_infos_controller_issue**](VcInfosApi.md#vc_infos_controller_issue) | **POST** /api/v1/vc-infos/issue | 新規VC発行(スキーマなし)
[**vc_infos_controller_upload**](VcInfosApi.md#vc_infos_controller_upload) | **POST** /api/v1/vc-infos/upload | 新規VCアップロード

# **vc_infos_controller_add_label**
> VcInfoResponseDto vc_infos_controller_add_label(bodyid)

VC情報へのラベル追加

リクエストパラメータのidで指定された単一のVC情報に対して、任意の管理用ラベルを追加します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::VcInfosApi.new
body = SwaggerClient::AddLabelToVcInfoDto.new # AddLabelToVcInfoDto | 
id = 'id_example' # String | 


begin
  #VC情報へのラベル追加
  result = api_instance.vc_infos_controller_add_label(bodyid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VcInfosApi->vc_infos_controller_add_label: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AddLabelToVcInfoDto**](AddLabelToVcInfoDto.md)|  | 
 **id** | **String**|  | 

### Return type

[**VcInfoResponseDto**](VcInfoResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **vc_infos_controller_connect_user**
> vc_infos_controller_connect_user(bodyid)

VC情報へのクライアントアカウント紐付け

VC情報の所有者、関係者などの管理者としてクライアントアカウントを紐付けます。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::VcInfosApi.new
body = SwaggerClient::UpdateVcInfoDto.new # UpdateVcInfoDto | 
id = 'id_example' # String | 


begin
  #VC情報へのクライアントアカウント紐付け
  api_instance.vc_infos_controller_connect_user(bodyid)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VcInfosApi->vc_infos_controller_connect_user: #{e}"
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



# **vc_infos_controller_create**
> VcInfoResponseDto vc_infos_controller_create(body)

新規VC発行

新規VCを発行します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::VcInfosApi.new
body = SwaggerClient::CreateVcInfoDto.new # CreateVcInfoDto | 


begin
  #新規VC発行
  result = api_instance.vc_infos_controller_create(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VcInfosApi->vc_infos_controller_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateVcInfoDto**](CreateVcInfoDto.md)|  | 

### Return type

[**VcInfoResponseDto**](VcInfoResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **vc_infos_controller_disconnect_user**
> vc_infos_controller_disconnect_user(id)

VC情報のクライアントアカウント紐付け解除

VC情報に紐付いたクライアントアカウントの紐付けを解除します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::VcInfosApi.new
id = 'id_example' # String | 


begin
  #VC情報のクライアントアカウント紐付け解除
  api_instance.vc_infos_controller_disconnect_user(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VcInfosApi->vc_infos_controller_disconnect_user: #{e}"
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



# **vc_infos_controller_find_all**
> VcInfosResponseDto vc_infos_controller_find_all(opts)

VC情報一覧取得

アプリケーションが管理するVC情報を一覧として値を返します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::VcInfosApi.new
opts = { 
  page: SwaggerClient::BigDecimal.new, # BigDecimal | (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1)
  limit: SwaggerClient::BigDecimal.new, # BigDecimal | (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10)
  label: 'label_example', # String | (任意) 例: \"vc-for-project1\"
  description: 'description_example' # String | (任意) 
}

begin
  #VC情報一覧取得
  result = api_instance.vc_infos_controller_find_all(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VcInfosApi->vc_infos_controller_find_all: #{e}"
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

[**VcInfosResponseDto**](VcInfosResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **vc_infos_controller_find_one**
> VcInfoResponseDto vc_infos_controller_find_one(id)

VC情報詳細取得

リクエストパラメータのidで指定された単一のVC情報の詳細情報の値を返します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::VcInfosApi.new
id = 'id_example' # String | 


begin
  #VC情報詳細取得
  result = api_instance.vc_infos_controller_find_one(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VcInfosApi->vc_infos_controller_find_one: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**VcInfoResponseDto**](VcInfoResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **vc_infos_controller_generate_vp**
> VcInfoResponseDto vc_infos_controller_generate_vp(bodyid)

新規VP情報生成

リクエストパラメータのidで指定されたVC情報から新規VPを発行します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::VcInfosApi.new
body = SwaggerClient::GenerateVpDto.new # GenerateVpDto | 
id = 'id_example' # String | 


begin
  #新規VP情報生成
  result = api_instance.vc_infos_controller_generate_vp(bodyid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VcInfosApi->vc_infos_controller_generate_vp: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GenerateVpDto**](GenerateVpDto.md)|  | 
 **id** | **String**|  | 

### Return type

[**VcInfoResponseDto**](VcInfoResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **vc_infos_controller_issue**
> VcInfoResponseDto vc_infos_controller_issue(body)

新規VC発行(スキーマなし)

VCスキーマを指定せず直接新規VCを発行します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::VcInfosApi.new
body = SwaggerClient::IssueVcInfoDto.new # IssueVcInfoDto | 


begin
  #新規VC発行(スキーマなし)
  result = api_instance.vc_infos_controller_issue(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VcInfosApi->vc_infos_controller_issue: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**IssueVcInfoDto**](IssueVcInfoDto.md)|  | 

### Return type

[**VcInfoResponseDto**](VcInfoResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **vc_infos_controller_upload**
> VcInfoResponseDto vc_infos_controller_upload(credential_objectlabeldescription)

新規VCアップロード

外部で発行された既存VCをアップロードし、本アプリケーションに保存します。。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::VcInfosApi.new
credential_object = nil # Object | 
label = 'label_example' # String | 
description = 'description_example' # String | 


begin
  #新規VCアップロード
  result = api_instance.vc_infos_controller_upload(credential_objectlabeldescription)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VcInfosApi->vc_infos_controller_upload: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credential_object** | [**Object**](.md)|  | 
 **label** | **String**|  | 
 **description** | **String**|  | 

### Return type

[**VcInfoResponseDto**](VcInfoResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



