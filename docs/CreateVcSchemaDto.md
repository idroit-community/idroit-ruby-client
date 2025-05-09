# SwaggerClient::CreateVcSchemaDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** | (必須) 新規生成するVCスキーマのタイトル | 
**version** | **String** | (必須) VCスキーマのバージョン(デフォルト: 1.0.0) | 
**contexts** | **Array&lt;String&gt;** | (任意) VCスキーマに設定する@context文字列の配列 | [optional] 
**description** | **String** | (任意) VCスキーマの説明文 | [optional] 
**is_badge_schema** | **BOOLEAN** | (任意) このスキーマがバッジのスキーマか否か(デフォルト: false) | 
**file_id** | **String** | (任意) バッジの画像のファイル識別子。&#x27;&#x60;isBadgeSchema&#x60;プロパティが&#x60;true&#x60;であり、バッジスキーマとして利用する場合は必須のパラメータ。 | 
**prop_array** | [**Array&lt;VcSchemaProperty&gt;**](VcSchemaProperty.md) | (必須) VCのスキーマの各項目における項目名と項目型のオブジェクトの配列 | 

