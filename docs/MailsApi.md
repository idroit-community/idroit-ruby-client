# SwaggerClient::MailsApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mails_controller_find_all**](MailsApi.md#mails_controller_find_all) | **GET** /api/v1/mails | 送信済みメール一覧取得
[**mails_controller_find_one**](MailsApi.md#mails_controller_find_one) | **GET** /api/v1/mails/{id} | 送信済みメール詳細取得
[**mails_controller_send**](MailsApi.md#mails_controller_send) | **POST** /api/v1/mails | 新規単一メール送信
[**mails_controller_send_batch**](MailsApi.md#mails_controller_send_batch) | **POST** /api/v1/mails/batch | 新規複数メールバッチ送信

# **mails_controller_find_all**
> MailsResponseDto mails_controller_find_all(opts)

送信済みメール一覧取得

送信済みメールを一覧として値を返します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::MailsApi.new
opts = { 
  page: SwaggerClient::BigDecimal.new, # BigDecimal | (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1)
  limit: SwaggerClient::BigDecimal.new # BigDecimal | (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10)
}

begin
  #送信済みメール一覧取得
  result = api_instance.mails_controller_find_all(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MailsApi->mails_controller_find_all: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **BigDecimal**| (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1) | [optional] 
 **limit** | **BigDecimal**| (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10) | [optional] 

### Return type

[**MailsResponseDto**](MailsResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **mails_controller_find_one**
> Mail mails_controller_find_one(id)

送信済みメール詳細取得

リクエストパラメータのidで指定された単一の送信済みメールの詳細情報の値を返します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::MailsApi.new
id = 'id_example' # String | 


begin
  #送信済みメール詳細取得
  result = api_instance.mails_controller_find_one(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MailsApi->mails_controller_find_one: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Mail**](Mail.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **mails_controller_send**
> mails_controller_send(body)

新規単一メール送信

新規単一メールを作成し、送信します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::MailsApi.new
body = SwaggerClient::SendMailDto.new # SendMailDto | 


begin
  #新規単一メール送信
  api_instance.mails_controller_send(body)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MailsApi->mails_controller_send: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SendMailDto**](SendMailDto.md)|  | 

### Return type

nil (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **mails_controller_send_batch**
> mails_controller_send_batch(body)

新規複数メールバッチ送信

新規メールを複数作成し、送信します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::MailsApi.new
body = SwaggerClient::SendMailBatchDto.new # SendMailBatchDto | 


begin
  #新規複数メールバッチ送信
  api_instance.mails_controller_send_batch(body)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MailsApi->mails_controller_send_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SendMailBatchDto**](SendMailBatchDto.md)|  | 

### Return type

nil (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



