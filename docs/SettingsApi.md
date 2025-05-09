# SwaggerClient::SettingsApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**settings_controller_find_all**](SettingsApi.md#settings_controller_find_all) | **GET** /api/v1/settings | Get all admins
[**settings_controller_find_one**](SettingsApi.md#settings_controller_find_one) | **GET** /api/v1/settings/{key} | Get a specific admin

# **settings_controller_find_all**
> SettingListResponseDto settings_controller_find_all

Get all admins

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::SettingsApi.new

begin
  #Get all admins
  result = api_instance.settings_controller_find_all
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SettingsApi->settings_controller_find_all: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SettingListResponseDto**](SettingListResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **settings_controller_find_one**
> SettingResponseDto settings_controller_find_one(key)

Get a specific admin

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::SettingsApi.new
key = 'key_example' # String | 


begin
  #Get a specific admin
  result = api_instance.settings_controller_find_one(key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SettingsApi->settings_controller_find_one: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**|  | 

### Return type

[**SettingResponseDto**](SettingResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



