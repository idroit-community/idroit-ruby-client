# SwaggerClient::FilesApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**files_controller_download**](FilesApi.md#files_controller_download) | **GET** /api/v1/files/{id}/download | ファイルダウンロード
[**files_controller_execute_csv**](FilesApi.md#files_controller_execute_csv) | **POST** /api/v1/files/{id} | CSVファイル実行
[**files_controller_find_all**](FilesApi.md#files_controller_find_all) | **GET** /api/v1/files | ファイル一覧取得
[**files_controller_find_one**](FilesApi.md#files_controller_find_one) | **GET** /api/v1/files/{id} | ファイル詳細取得
[**files_controller_remove**](FilesApi.md#files_controller_remove) | **DELETE** /api/v1/files/{id} | ファイル削除
[**files_controller_upload_file**](FilesApi.md#files_controller_upload_file) | **POST** /api/v1/files | ファイルアップロード

# **files_controller_download**
> String files_controller_download(id)

ファイルダウンロード

リクエストパラメータのidで指定された単一のファイルのバイナリデータを返します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::FilesApi.new
id = 'id_example' # String | 


begin
  #ファイルダウンロード
  result = api_instance.files_controller_download(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FilesApi->files_controller_download: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

**String**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream



# **files_controller_execute_csv**
> files_controller_execute_csv(bodyid)

CSVファイル実行

(非推奨) ユーザー、クライアント情報を記載したCSVファイルを実行し、新規アカウントを作成します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::FilesApi.new
body = SwaggerClient::CreateDidDto.new # CreateDidDto | 
id = 'id_example' # String | 


begin
  #CSVファイル実行
  api_instance.files_controller_execute_csv(bodyid)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FilesApi->files_controller_execute_csv: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateDidDto**](CreateDidDto.md)|  | 
 **id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **files_controller_find_all**
> FilesResponseDto files_controller_find_all(opts)

ファイル一覧取得

ファイルを一覧として値を返します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::FilesApi.new
opts = { 
  page: SwaggerClient::BigDecimal.new, # BigDecimal | (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1)
  limit: SwaggerClient::BigDecimal.new, # BigDecimal | (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10)
  filename: 'filename_example', # String | (任意) 例: \"file-1732019975229-394515535.png\"
  originalname: 'originalname_example', # String | (任意) 例: \"english-badge.png\"
  executed: true, # BOOLEAN | (任意) 例: true
  type: 'type_example', # String | (任意) 例: \"image/png\"
  status: SwaggerClient::BigDecimal.new # BigDecimal | (任意) 例: 0
}

begin
  #ファイル一覧取得
  result = api_instance.files_controller_find_all(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FilesApi->files_controller_find_all: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **BigDecimal**| (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1) | [optional] 
 **limit** | **BigDecimal**| (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10) | [optional] 
 **filename** | **String**| (任意) 例: \&quot;file-1732019975229-394515535.png\&quot; | [optional] 
 **originalname** | **String**| (任意) 例: \&quot;english-badge.png\&quot; | [optional] 
 **executed** | **BOOLEAN**| (任意) 例: true | [optional] 
 **type** | **String**| (任意) 例: \&quot;image/png\&quot; | [optional] 
 **status** | **BigDecimal**| (任意) 例: 0 | [optional] 

### Return type

[**FilesResponseDto**](FilesResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **files_controller_find_one**
> FileResponseDto files_controller_find_one(id)

ファイル詳細取得

リクエストパラメータのidで指定された単一のファイルの詳細情報の値を返します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::FilesApi.new
id = 'id_example' # String | 


begin
  #ファイル詳細取得
  result = api_instance.files_controller_find_one(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FilesApi->files_controller_find_one: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**FileResponseDto**](FileResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **files_controller_remove**
> files_controller_remove(id)

ファイル削除

リクエストパラメータのidで指定された単一のファイルを削除します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::FilesApi.new
id = 'id_example' # String | 


begin
  #ファイル削除
  api_instance.files_controller_remove(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FilesApi->files_controller_remove: #{e}"
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



# **files_controller_upload_file**
> FileResponseDto files_controller_upload_file(file)

ファイルアップロード

新規ファイルアップロードを作成します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::FilesApi.new
file = 'file_example' # String | 


begin
  #ファイルアップロード
  result = api_instance.files_controller_upload_file(file)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FilesApi->files_controller_upload_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **String**|  | 

### Return type

[**FileResponseDto**](FileResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



