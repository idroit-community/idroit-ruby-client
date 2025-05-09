# SwaggerClient::VcSchemasApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**vc_schemas_controller_create**](VcSchemasApi.md#vc_schemas_controller_create) | **POST** /api/v1/vc-schemas | 新規VCスキーマ作成
[**vc_schemas_controller_find_all**](VcSchemasApi.md#vc_schemas_controller_find_all) | **GET** /api/v1/vc-schemas | VCスキーマ一覧取得
[**vc_schemas_controller_find_one**](VcSchemasApi.md#vc_schemas_controller_find_one) | **GET** /api/v1/vc-schemas/{id} | VCスキーマ情報詳細取得
[**vc_schemas_controller_update**](VcSchemasApi.md#vc_schemas_controller_update) | **PUT** /api/v1/vc-schemas/{id} | VCスキーマへのグループ紐付け

# **vc_schemas_controller_create**
> VcSchemaResponseDto vc_schemas_controller_create(body)

新規VCスキーマ作成

新規VCスキーマを作成します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::VcSchemasApi.new
body = SwaggerClient::CreateVcSchemaDto.new # CreateVcSchemaDto | 


begin
  #新規VCスキーマ作成
  result = api_instance.vc_schemas_controller_create(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VcSchemasApi->vc_schemas_controller_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateVcSchemaDto**](CreateVcSchemaDto.md)|  | 

### Return type

[**VcSchemaResponseDto**](VcSchemaResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **vc_schemas_controller_find_all**
> VcSchemasResponseDto vc_schemas_controller_find_all(opts)

VCスキーマ一覧取得

VCスキーマを一覧として値を返します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::VcSchemasApi.new
opts = { 
  page: SwaggerClient::BigDecimal.new, # BigDecimal | (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1)
  limit: SwaggerClient::BigDecimal.new, # BigDecimal | (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10)
  title: 'title_example', # String | (任意) 例: \"Schema Sample\"
  version: 'version_example', # String | (任意) 例: \"1.0.0\"
  description: 'description_example', # String | (任意) 例: 
  is_badge_schema: true # BOOLEAN | (任意) 例: true
}

begin
  #VCスキーマ一覧取得
  result = api_instance.vc_schemas_controller_find_all(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VcSchemasApi->vc_schemas_controller_find_all: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **BigDecimal**| (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1) | [optional] 
 **limit** | **BigDecimal**| (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10) | [optional] 
 **title** | **String**| (任意) 例: \&quot;Schema Sample\&quot; | [optional] 
 **version** | **String**| (任意) 例: \&quot;1.0.0\&quot; | [optional] 
 **description** | **String**| (任意) 例:  | [optional] 
 **is_badge_schema** | **BOOLEAN**| (任意) 例: true | [optional] 

### Return type

[**VcSchemasResponseDto**](VcSchemasResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **vc_schemas_controller_find_one**
> VcSchemaResponseDto vc_schemas_controller_find_one(id)

VCスキーマ情報詳細取得

リクエストパラメータのidで指定された単一のVCスキーマの詳細情報の値を返します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::VcSchemasApi.new
id = 'id_example' # String | 


begin
  #VCスキーマ情報詳細取得
  result = api_instance.vc_schemas_controller_find_one(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VcSchemasApi->vc_schemas_controller_find_one: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**VcSchemaResponseDto**](VcSchemaResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **vc_schemas_controller_update**
> VcSchemaResponseDto vc_schemas_controller_update(bodyid)

VCスキーマへのグループ紐付け

VCスキーマに関連するグループを紐付けます。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::VcSchemasApi.new
body = SwaggerClient::UpdateVcSchemaDto.new # UpdateVcSchemaDto | 
id = 'id_example' # String | 


begin
  #VCスキーマへのグループ紐付け
  result = api_instance.vc_schemas_controller_update(bodyid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VcSchemasApi->vc_schemas_controller_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateVcSchemaDto**](UpdateVcSchemaDto.md)|  | 
 **id** | **String**|  | 

### Return type

[**VcSchemaResponseDto**](VcSchemaResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



