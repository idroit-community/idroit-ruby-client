# SwaggerClient::BadgesApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**badges_controller_add_label**](BadgesApi.md#badges_controller_add_label) | **PUT** /api/v1/badges/{id}/label | Badgeへのラベル追加
[**badges_controller_create**](BadgesApi.md#badges_controller_create) | **POST** /api/v1/badges | 新規バッジ発行
[**badges_controller_download**](BadgesApi.md#badges_controller_download) | **GET** /api/v1/badges/{id}/download | バッジダウンロード
[**badges_controller_file_verify**](BadgesApi.md#badges_controller_file_verify) | **POST** /api/v1/badges/file | バッジファイル検証
[**badges_controller_find_all**](BadgesApi.md#badges_controller_find_all) | **GET** /api/v1/badges | バッジ一覧取得
[**badges_controller_find_one**](BadgesApi.md#badges_controller_find_one) | **GET** /api/v1/badges/{id} | バッジ詳細取得
[**badges_controller_verify**](BadgesApi.md#badges_controller_verify) | **PUT** /api/v1/badges/{id}/verify | バッジ検証

# **badges_controller_add_label**
> BadgeResponseDto badges_controller_add_label(bodyid)

Badgeへのラベル追加

リクエストパラメータのidで指定された単一のBadgeに対して、任意の管理用ラベルを追加します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::BadgesApi.new
body = SwaggerClient::AddLabelToBadgeDto.new # AddLabelToBadgeDto | 
id = 'id_example' # String | 


begin
  #Badgeへのラベル追加
  result = api_instance.badges_controller_add_label(bodyid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BadgesApi->badges_controller_add_label: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AddLabelToBadgeDto**](AddLabelToBadgeDto.md)|  | 
 **id** | **String**|  | 

### Return type

[**BadgeResponseDto**](BadgeResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **badges_controller_create**
> BadgeResponseDto badges_controller_create(body)

新規バッジ発行

新規バッジを発行します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::BadgesApi.new
body = SwaggerClient::CreateBadgeDto.new # CreateBadgeDto | 


begin
  #新規バッジ発行
  result = api_instance.badges_controller_create(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BadgesApi->badges_controller_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateBadgeDto**](CreateBadgeDto.md)|  | 

### Return type

[**BadgeResponseDto**](BadgeResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **badges_controller_download**
> String badges_controller_download(id, vp_info_id)

バッジダウンロード

リクエストパラメータのidで指定された単一のバッジ画像のバイナリデータを返します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::BadgesApi.new
id = 'id_example' # String | 
vp_info_id = 'vp_info_id_example' # String | 


begin
  #バッジダウンロード
  result = api_instance.badges_controller_download(id, vp_info_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BadgesApi->badges_controller_download: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **vp_info_id** | **String**|  | 

### Return type

**String**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream



# **badges_controller_file_verify**
> VerifiyBadgeFileReponseDto badges_controller_file_verify(file)

バッジファイル検証

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::BadgesApi.new
file = 'file_example' # String | 


begin
  #バッジファイル検証
  result = api_instance.badges_controller_file_verify(file)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BadgesApi->badges_controller_file_verify: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **String**|  | 

### Return type

[**VerifiyBadgeFileReponseDto**](VerifiyBadgeFileReponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **badges_controller_find_all**
> BadgesResponseDto badges_controller_find_all(opts)

バッジ一覧取得

アプリケーションが管理するバッジ情報を一覧として値を返します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::BadgesApi.new
opts = { 
  page: SwaggerClient::BigDecimal.new, # BigDecimal | (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1)
  limit: SwaggerClient::BigDecimal.new, # BigDecimal | (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10)
  label: 'label_example', # String | (任意) 例: \"sample-badge-1\"
  filename: 'filename_example', # String | (任意) 例: \"badge-12345-12345.png\"
  description: 'description_example', # String | (任意) 
  status: SwaggerClient::BigDecimal.new # BigDecimal | (任意) 例: 1
}

begin
  #バッジ一覧取得
  result = api_instance.badges_controller_find_all(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BadgesApi->badges_controller_find_all: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **BigDecimal**| (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1) | [optional] 
 **limit** | **BigDecimal**| (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10) | [optional] 
 **label** | **String**| (任意) 例: \&quot;sample-badge-1\&quot; | [optional] 
 **filename** | **String**| (任意) 例: \&quot;badge-12345-12345.png\&quot; | [optional] 
 **description** | **String**| (任意)  | [optional] 
 **status** | **BigDecimal**| (任意) 例: 1 | [optional] 

### Return type

[**BadgesResponseDto**](BadgesResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **badges_controller_find_one**
> BadgeResponseDto badges_controller_find_one(id)

バッジ詳細取得

リクエストパラメータのidで指定された単一のバッジ情報の詳細情報の値を返します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::BadgesApi.new
id = 'id_example' # String | 


begin
  #バッジ詳細取得
  result = api_instance.badges_controller_find_one(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BadgesApi->badges_controller_find_one: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**BadgeResponseDto**](BadgeResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **badges_controller_verify**
> VerifiyBadgeReponseDto badges_controller_verify(bodyid)

バッジ検証

バッジのVC/VPの検証を実行します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::BadgesApi.new
body = SwaggerClient::VerifyBadgeDto.new # VerifyBadgeDto | 
id = 'id_example' # String | 


begin
  #バッジ検証
  result = api_instance.badges_controller_verify(bodyid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BadgesApi->badges_controller_verify: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**VerifyBadgeDto**](VerifyBadgeDto.md)|  | 
 **id** | **String**|  | 

### Return type

[**VerifiyBadgeReponseDto**](VerifiyBadgeReponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



