# SwaggerClient::HealthApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**app_controller_health**](HealthApi.md#app_controller_health) | **GET** /api/v1/health | ヘルスチェック

# **app_controller_health**
> app_controller_health

ヘルスチェック

ヘルスチェック

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::HealthApi.new

begin
  #ヘルスチェック
  api_instance.app_controller_health
rescue SwaggerClient::ApiError => e
  puts "Exception when calling HealthApi->app_controller_health: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



