# SwaggerClient::AllOfFileVcSchema

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | (必須) VCスキーマの識別子 | 
**title** | **String** | (必須) VCスキーマのタイトル | 
**version** | **String** | (必須) VCスキーマのバージョン | 
**description** | **String** | (任意) VCスキーマの説明文 | 
**is_badge_schema** | **String** | (必須) VCスキーマがバッジのスキーマか否か | [optional] [default to &#x27;false&#x27;]
**vc_infos** | [**Array&lt;VcInfo&gt;**](VcInfo.md) | (任意) このVCスキーマを用いて生成したVC情報の配列。 | [optional] 
**vc_contexts** | [**Array&lt;VcContext&gt;**](VcContext.md) | (任意) VCスキーマに設定したcontext項目の配列 | [optional] 
**vc_schema_properties** | [**Array&lt;VcSchemaProperty&gt;**](VcSchemaProperty.md) | (必須) VCスキーマの項目情報の配列 | [optional] 
**groups** | [**Array&lt;Group&gt;**](Group.md) | (任意) VCスキーマを紐付けたグループの配列 | [optional] 
**badges** | [**Array&lt;Badge&gt;**](Badge.md) | (任意) VCスキーマを紐付けたバッジ | [optional] 
**file** | [****](.md) | (任意) VCスキーマに紐付けるバッジ用の画像。&#x60;isBadgeSchema&#x60;プロパティが&#x60;true&#x60;の場合必須。 | [optional] 
**created_by** | [****](.md) | (必須) VCスキーマを作成したユーザーアカウント。 | 
**created_at** | **String** | (必須) VCスキーマの作成日時 | 
**updated_at** | **String** | (必須) VCスキーマの更新日時 | 

