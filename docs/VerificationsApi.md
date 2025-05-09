# SwaggerClient::VerificationsApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**verifications_controller_create**](VerificationsApi.md#verifications_controller_create) | **POST** /api/v1/verifications | VC/VP検証
[**verifications_controller_find_all**](VerificationsApi.md#verifications_controller_find_all) | **GET** /api/v1/verifications | VC/VP検証結果一覧取得
[**verifications_controller_find_one**](VerificationsApi.md#verifications_controller_find_one) | **GET** /api/v1/verifications/{id} | VC/VP検証結果詳細取得

# **verifications_controller_create**
> VerificationResponseDto verifications_controller_create(body)

VC/VP検証

VC/VPの検証を実行します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::VerificationsApi.new
body = SwaggerClient::VerificationDto.new # VerificationDto | 


begin
  #VC/VP検証
  result = api_instance.verifications_controller_create(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VerificationsApi->verifications_controller_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**VerificationDto**](VerificationDto.md)|  | 

### Return type

[**VerificationResponseDto**](VerificationResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **verifications_controller_find_all**
> VerificationsResponseDto verifications_controller_find_all(opts)

VC/VP検証結果一覧取得

アプリケーションが管理するVC/VP検証結果を一覧として値を返します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::VerificationsApi.new
opts = { 
  page: SwaggerClient::BigDecimal.new, # BigDecimal | (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1)
  limit: SwaggerClient::BigDecimal.new, # BigDecimal | (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10)
  label: 'label_example', # String | (任意) 例: \"verification-for-project1\"
  result: true # BOOLEAN | (任意) 例: true
}

begin
  #VC/VP検証結果一覧取得
  result = api_instance.verifications_controller_find_all(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VerificationsApi->verifications_controller_find_all: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **BigDecimal**| (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1) | [optional] 
 **limit** | **BigDecimal**| (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10) | [optional] 
 **label** | **String**| (任意) 例: \&quot;verification-for-project1\&quot; | [optional] 
 **result** | **BOOLEAN**| (任意) 例: true | [optional] 

### Return type

[**VerificationsResponseDto**](VerificationsResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **verifications_controller_find_one**
> VerificationResponseDto verifications_controller_find_one(id)

VC/VP検証結果詳細取得

リクエストパラメータのidで指定された単一のVC/VP検証結果の詳細情報の値を返します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::VerificationsApi.new
id = 'id_example' # String | 


begin
  #VC/VP検証結果詳細取得
  result = api_instance.verifications_controller_find_one(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VerificationsApi->verifications_controller_find_one: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**VerificationResponseDto**](VerificationResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



