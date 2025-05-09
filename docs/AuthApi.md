# SwaggerClient::AuthApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**auth_controller_get_profile**](AuthApi.md#auth_controller_get_profile) | **GET** /api/v1/auth/profile | ログイン済みのアカウント情報取得
[**auth_controller_login**](AuthApi.md#auth_controller_login) | **POST** /api/v1/auth/login | アカウントログインを実施

# **auth_controller_get_profile**
> GetProfileResponseDto auth_controller_get_profile

ログイン済みのアカウント情報取得

ログイン済みの管理者アカウントの情報を返却します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::AuthApi.new

begin
  #ログイン済みのアカウント情報取得
  result = api_instance.auth_controller_get_profile
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthApi->auth_controller_get_profile: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetProfileResponseDto**](GetProfileResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **auth_controller_login**
> SignInResponseDto auth_controller_login(body)

アカウントログインを実施

アカウントログインを実行し、認証結果に応じてJSON Web Tokenの値を返します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::AuthApi.new
body = SwaggerClient::SignInDto.new # SignInDto | 


begin
  #アカウントログインを実施
  result = api_instance.auth_controller_login(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthApi->auth_controller_login: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SignInDto**](SignInDto.md)|  | 

### Return type

[**SignInResponseDto**](SignInResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



