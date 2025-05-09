# SwaggerClient::AllOfVcSchemaResponseDtoFile

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | (必須) ファイルの識別子 | 
**filename** | **String** | (任意) システム内で管理される際にシステムによって名付けられるユニークなファイル名 | 
**originalname** | **String** | (必須) システムへアップロード時の元のファイル名 | 
**type** | **String** | (必須) ファイル形式 | 
**file_data** | **String** | (必須) ファイルのバイナリデータ | 
**executed** | **BOOLEAN** | (任意) ファイルがCSVの場合、アカウントデータ生成実行に使用されたか。(true: 実行済み, false: 未使用) | 
**status** | [**BigDecimal**](BigDecimal.md) | (必須) ファイルのステータス | 
**group** | [**Array&lt;Group&gt;**](Group.md) | (任意) ファイルを紐づけたグループの配列 | 
**vc_schema** | [****](.md) | (任意) ファイルに紐づいたVCスキーマ | [optional] 
**created_by** | [****](.md) | (必須) ファイルをアップロードしたユーザーアカウント。 | 
**created_at** | **String** | (必須) ファイルの作成日時 | 
**updated_at** | **String** | (必須) グループの最終更新日時 | 

