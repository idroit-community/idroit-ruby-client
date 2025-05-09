# SwaggerClient::Badge

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | (必須) バッジの識別子 | 
**label** | **String** | (任意) バッジのラベル名 | [optional] 
**filename** | **String** | (任意) バッジのファイル名 | [optional] 
**description** | **String** | (任意) バッジの作成目的や用途など任意で設定可能な説明文 | 
**status** | [**BigDecimal**](BigDecimal.md) | (必須) バッジの状態(1: アクティブ, 0: 停止中) | 
**vc_schema** | [**AllOfBadgeVcSchema**](AllOfBadgeVcSchema.md) | (任意) バッジに紐付いたVCスキーマ | [optional] 
**vc_info** | [**AllOfBadgeVcInfo**](AllOfBadgeVcInfo.md) | (任意) バッジに紐付き、メタデータとなるVC情報 | [optional] 
**created_at** | **String** | (必須) グループの作成日時 | 
**updated_at** | **String** | (必須) グループの最終更新日時 | 

