# SwaggerClient::GroupsApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**groups_controller_connect_did_infos**](GroupsApi.md#groups_controller_connect_did_infos) | **PUT** /api/v1/groups/{id}/did-infos | グループへのDID情報紐付け
[**groups_controller_connect_users**](GroupsApi.md#groups_controller_connect_users) | **PUT** /api/v1/groups/{id}/users | グループへのユーザーアカウント紐付け
[**groups_controller_connect_vc_infos**](GroupsApi.md#groups_controller_connect_vc_infos) | **PUT** /api/v1/groups/{id}/vc-infos | グループへのVC情報紐付け
[**groups_controller_connect_vc_schema**](GroupsApi.md#groups_controller_connect_vc_schema) | **PUT** /api/v1/groups/{id}/vc-schemas | グループへのVCスキーマ紐付け
[**groups_controller_connect_vp_infos**](GroupsApi.md#groups_controller_connect_vp_infos) | **PUT** /api/v1/groups/{id}/vp-infos | グループへのVP情報紐付け
[**groups_controller_create**](GroupsApi.md#groups_controller_create) | **POST** /api/v1/groups | グループ作成
[**groups_controller_disconnect_did_info**](GroupsApi.md#groups_controller_disconnect_did_info) | **DELETE** /api/v1/groups/{id}/did-info/{did_info_id} | グループのDID情報紐付け解除
[**groups_controller_disconnect_user**](GroupsApi.md#groups_controller_disconnect_user) | **DELETE** /api/v1/groups/{id}/user/{user_id} | グループのユーザーアカウント紐付け解除
[**groups_controller_disconnect_vc_info**](GroupsApi.md#groups_controller_disconnect_vc_info) | **DELETE** /api/v1/groups/{id}/vc-info/{vc_info_id} | グループのVC情報紐付け解除
[**groups_controller_disconnect_vc_schema**](GroupsApi.md#groups_controller_disconnect_vc_schema) | **DELETE** /api/v1/groups/{id}/vc-schema/{vc_schema_id} | グループのVCスキーマ紐付け解除
[**groups_controller_disconnect_vp_info**](GroupsApi.md#groups_controller_disconnect_vp_info) | **DELETE** /api/v1/groups/{id}/vp-info/{vp_info_id} | グループのVP情報紐付け解除
[**groups_controller_find_all**](GroupsApi.md#groups_controller_find_all) | **GET** /api/v1/groups | グループ一覧取得
[**groups_controller_find_one**](GroupsApi.md#groups_controller_find_one) | **GET** /api/v1/groups/{id} | グループ詳細取得
[**groups_controller_remove**](GroupsApi.md#groups_controller_remove) | **DELETE** /api/v1/groups/{id} | グループ停止
[**groups_controller_update**](GroupsApi.md#groups_controller_update) | **PUT** /api/v1/groups/{id} | グループ更新

# **groups_controller_connect_did_infos**
> GroupResponseDto groups_controller_connect_did_infos(bodyid)

グループへのDID情報紐付け

グループにDID情報を紐付けます。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::GroupsApi.new
body = SwaggerClient::ConnectDidInfosDto.new # ConnectDidInfosDto | 
id = 'id_example' # String | 


begin
  #グループへのDID情報紐付け
  result = api_instance.groups_controller_connect_did_infos(bodyid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GroupsApi->groups_controller_connect_did_infos: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ConnectDidInfosDto**](ConnectDidInfosDto.md)|  | 
 **id** | **String**|  | 

### Return type

[**GroupResponseDto**](GroupResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **groups_controller_connect_users**
> GroupResponseDto groups_controller_connect_users(bodyid)

グループへのユーザーアカウント紐付け

グループの所有者、関係者などの管理者としてユーザーアカウントを紐付けます。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::GroupsApi.new
body = SwaggerClient::ConnectUsersDto.new # ConnectUsersDto | 
id = 'id_example' # String | 


begin
  #グループへのユーザーアカウント紐付け
  result = api_instance.groups_controller_connect_users(bodyid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GroupsApi->groups_controller_connect_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ConnectUsersDto**](ConnectUsersDto.md)|  | 
 **id** | **String**|  | 

### Return type

[**GroupResponseDto**](GroupResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **groups_controller_connect_vc_infos**
> GroupResponseDto groups_controller_connect_vc_infos(bodyid)

グループへのVC情報紐付け

グループにVC情報を紐付けます。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::GroupsApi.new
body = SwaggerClient::ConnectVcInfosDto.new # ConnectVcInfosDto | 
id = 'id_example' # String | 


begin
  #グループへのVC情報紐付け
  result = api_instance.groups_controller_connect_vc_infos(bodyid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GroupsApi->groups_controller_connect_vc_infos: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ConnectVcInfosDto**](ConnectVcInfosDto.md)|  | 
 **id** | **String**|  | 

### Return type

[**GroupResponseDto**](GroupResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **groups_controller_connect_vc_schema**
> GroupResponseDto groups_controller_connect_vc_schema(bodyid)

グループへのVCスキーマ紐付け

グループにVCスキーマを紐付けます。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::GroupsApi.new
body = SwaggerClient::ConnectVcSchemasDto.new # ConnectVcSchemasDto | 
id = 'id_example' # String | 


begin
  #グループへのVCスキーマ紐付け
  result = api_instance.groups_controller_connect_vc_schema(bodyid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GroupsApi->groups_controller_connect_vc_schema: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ConnectVcSchemasDto**](ConnectVcSchemasDto.md)|  | 
 **id** | **String**|  | 

### Return type

[**GroupResponseDto**](GroupResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **groups_controller_connect_vp_infos**
> GroupResponseDto groups_controller_connect_vp_infos(bodyid)

グループへのVP情報紐付け

グループにVP情報を紐付けます。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::GroupsApi.new
body = SwaggerClient::ConnectVpInfosDto.new # ConnectVpInfosDto | 
id = 'id_example' # String | 


begin
  #グループへのVP情報紐付け
  result = api_instance.groups_controller_connect_vp_infos(bodyid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GroupsApi->groups_controller_connect_vp_infos: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ConnectVpInfosDto**](ConnectVpInfosDto.md)|  | 
 **id** | **String**|  | 

### Return type

[**GroupResponseDto**](GroupResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **groups_controller_create**
> GroupResponseDto groups_controller_create(body)

グループ作成

グループ作成に成功しました。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::GroupsApi.new
body = SwaggerClient::CreateGroupDto.new # CreateGroupDto | 


begin
  #グループ作成
  result = api_instance.groups_controller_create(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GroupsApi->groups_controller_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateGroupDto**](CreateGroupDto.md)|  | 

### Return type

[**GroupResponseDto**](GroupResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **groups_controller_disconnect_did_info**
> GroupResponseDto groups_controller_disconnect_did_info(id, did_info_id)

グループのDID情報紐付け解除

グループに紐付いたDID情報の紐付けを解除します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::GroupsApi.new
id = 'id_example' # String | 
did_info_id = 'did_info_id_example' # String | 


begin
  #グループのDID情報紐付け解除
  result = api_instance.groups_controller_disconnect_did_info(id, did_info_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GroupsApi->groups_controller_disconnect_did_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **did_info_id** | **String**|  | 

### Return type

[**GroupResponseDto**](GroupResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **groups_controller_disconnect_user**
> GroupResponseDto groups_controller_disconnect_user(id, user_id)

グループのユーザーアカウント紐付け解除

グループに紐付いたユーザーアカウントの紐付けを解除します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::GroupsApi.new
id = 'id_example' # String | 
user_id = 'user_id_example' # String | 


begin
  #グループのユーザーアカウント紐付け解除
  result = api_instance.groups_controller_disconnect_user(id, user_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GroupsApi->groups_controller_disconnect_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **user_id** | **String**|  | 

### Return type

[**GroupResponseDto**](GroupResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **groups_controller_disconnect_vc_info**
> GroupResponseDto groups_controller_disconnect_vc_info(id, vc_info_id)

グループのVC情報紐付け解除

グループに紐付いたVC情報の紐付けを解除します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::GroupsApi.new
id = 'id_example' # String | 
vc_info_id = 'vc_info_id_example' # String | 


begin
  #グループのVC情報紐付け解除
  result = api_instance.groups_controller_disconnect_vc_info(id, vc_info_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GroupsApi->groups_controller_disconnect_vc_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **vc_info_id** | **String**|  | 

### Return type

[**GroupResponseDto**](GroupResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **groups_controller_disconnect_vc_schema**
> GroupResponseDto groups_controller_disconnect_vc_schema(id, vc_schema_id)

グループのVCスキーマ紐付け解除

グループに紐付いたVCスキーマの紐付けを解除します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::GroupsApi.new
id = 'id_example' # String | 
vc_schema_id = 'vc_schema_id_example' # String | 


begin
  #グループのVCスキーマ紐付け解除
  result = api_instance.groups_controller_disconnect_vc_schema(id, vc_schema_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GroupsApi->groups_controller_disconnect_vc_schema: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **vc_schema_id** | **String**|  | 

### Return type

[**GroupResponseDto**](GroupResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **groups_controller_disconnect_vp_info**
> GroupResponseDto groups_controller_disconnect_vp_info(id, vp_info_id)

グループのVP情報紐付け解除

グループに紐付いたVP情報の紐付けを解除します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::GroupsApi.new
id = 'id_example' # String | 
vp_info_id = 'vp_info_id_example' # String | 


begin
  #グループのVP情報紐付け解除
  result = api_instance.groups_controller_disconnect_vp_info(id, vp_info_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GroupsApi->groups_controller_disconnect_vp_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **vp_info_id** | **String**|  | 

### Return type

[**GroupResponseDto**](GroupResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **groups_controller_find_all**
> GroupsResponseDto groups_controller_find_all(opts)

グループ一覧取得

グループを一覧として値を返します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::GroupsApi.new
opts = { 
  page: SwaggerClient::BigDecimal.new, # BigDecimal | (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1)
  limit: SwaggerClient::BigDecimal.new, # BigDecimal | (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10)
  name: 'name_example', # String | (任意)グループの名前。 例: \"Group Project1\"
  status: 'status_example' # String | (任意)グループのステータス。 例: \"active\"
}

begin
  #グループ一覧取得
  result = api_instance.groups_controller_find_all(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GroupsApi->groups_controller_find_all: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **BigDecimal**| (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1) | [optional] 
 **limit** | **BigDecimal**| (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10) | [optional] 
 **name** | **String**| (任意)グループの名前。 例: \&quot;Group Project1\&quot; | [optional] 
 **status** | **String**| (任意)グループのステータス。 例: \&quot;active\&quot; | [optional] 

### Return type

[**GroupsResponseDto**](GroupsResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **groups_controller_find_one**
> GroupResponseDto groups_controller_find_one(id)

グループ詳細取得

リクエストパラメータのidで指定された単一の管理者アカウントの詳細情報の値を返します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::GroupsApi.new
id = 'id_example' # String | 


begin
  #グループ詳細取得
  result = api_instance.groups_controller_find_one(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GroupsApi->groups_controller_find_one: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**GroupResponseDto**](GroupResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **groups_controller_remove**
> groups_controller_remove(id)

グループ停止

リクエストパラメータのidで指定された単一のグループを停止します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::GroupsApi.new
id = 'id_example' # String | 


begin
  #グループ停止
  api_instance.groups_controller_remove(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GroupsApi->groups_controller_remove: #{e}"
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



# **groups_controller_update**
> GroupResponseDto groups_controller_update(id)

グループ更新

リクエストパラメータのidで指定された単一のグループ情報を更新します。

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::GroupsApi.new
id = 'id_example' # String | 


begin
  #グループ更新
  result = api_instance.groups_controller_update(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GroupsApi->groups_controller_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**GroupResponseDto**](GroupResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



