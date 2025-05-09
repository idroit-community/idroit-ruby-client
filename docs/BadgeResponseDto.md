# SwaggerClient::BadgeResponseDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | バッジの識別子 | 
**label** | **String** | バッジのラベル名 | 
**filename** | **String** | バッジのファイル名 | 
**description** | **String** | バッジの作成目的や用途など任意で設定可能な説明文 | 
**status** | [**BigDecimal**](BigDecimal.md) | バッジの状態(1: 利用可, 0: 利用停止中) | 
**vc_schema** | [**AllOfBadgeResponseDtoVcSchema**](AllOfBadgeResponseDtoVcSchema.md) | バッジに紐付いたVCスキーマの配列 | 
**vc_info** | [**AllOfBadgeResponseDtoVcInfo**](AllOfBadgeResponseDtoVcInfo.md) | バッジに紐付いたVC情報の配列 | 
**created_at** | **String** | バッジの作成日時 | 
**updated_at** | **String** | バッジの最終更新日時 | 

