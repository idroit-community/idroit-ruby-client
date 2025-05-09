# SwaggerClient::VcSchemaResponseDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | VCスキーマの識別子 | 
**title** | **String** | VCスキーマのタイトル | 
**version** | **String** | VCスキーマのバージョン | 
**description** | **String** | VCスキーマの説明文 | 
**is_badge_schema** | **String** | VCスキーマがバッジのスキーマか否か | 
**vc_infos** | [**Array&lt;VcInfo&gt;**](VcInfo.md) |  | 
**vc_contexts** | [**Array&lt;VcContext&gt;**](VcContext.md) | VCのスキーマのJSONスキーマコンテキスト | 
**vc_schema_properties** | [**Array&lt;VcSchemaProperty&gt;**](VcSchemaProperty.md) | VCのスキーマの各項目における項目名と項目型のオブジェクトの配列 | 
**groups** | [**Array&lt;Group&gt;**](Group.md) |  | 
**badges** | [**Array&lt;Badge&gt;**](Badge.md) | VCスキーマを紐付けたバッジ | 
**file** | [**AllOfVcSchemaResponseDtoFile**](AllOfVcSchemaResponseDtoFile.md) | VCスキーマに紐付けるバッジ用の画像。&#x60;isBadgeSchema&#x60;プロパティが&#x60;true&#x60;の場合必須。 | 
**created_by** | [**AllOfVcSchemaResponseDtoCreatedBy**](AllOfVcSchemaResponseDtoCreatedBy.md) | VCスキーマを作成したユーザーアカウント | 
**created_at** | **String** | VCスキーマの作成日時 | 
**updated_at** | **String** | VCスキーマの最終更新日時 | 

