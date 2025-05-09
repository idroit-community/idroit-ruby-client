# SwaggerClient::FileResponseDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | (必須) ファイルの識別子 | 
**filename** | **String** | (必須) システム内で管理される際にシステムによって名付けられるユニークなファイル名 | 
**originalname** | **String** | (必須) システム内で管理される際にシステムによって名付けられるユニークなファイル名 | 
**file_data** | **String** | (必須) システムへアップロード時の元のファイル名 | 
**file_type** | **String** | (必須) ファイル形式 | 
**type** | **String** | (必須) ファイル形式 | 
**executed** | **BOOLEAN** | (任意) ファイルがCSVの場合、アカウントデータ生成実行に使用されたか。(true: 実行済み, false: 未使用) | 
**status** | [**BigDecimal**](BigDecimal.md) | (必須) ファイルのステータス | 
**created_by** | [**AllOfFileResponseDtoCreatedBy**](AllOfFileResponseDtoCreatedBy.md) | ファイルをアップロードしたユーザーアカウント | 
**created_at** | **String** | (必須) ファイルの作成日時 | 
**updated_at** | **String** | (必須) グループの最終更新日時 | 

