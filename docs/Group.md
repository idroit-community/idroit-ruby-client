# SwaggerClient::Group

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | (必須) グループの識別子 | 
**name** | **String** | (必須) グループの名前。(例: プロジェクト名や企業名など) | 
**status** | **String** | (必須) グループの状態(1: アクティブ, 0: 停止中) | 
**description** | **String** | (任意) グループの作成目的や用途など任意で設定可能な説明文 | 
**users** | [**Array&lt;User&gt;**](User.md) | (任意) グループに紐付いたアカウントの配列 | [optional] 
**created_by** | [**AllOfGroupCreatedBy**](AllOfGroupCreatedBy.md) | (必須) グループを作成したユーザーアカウント。 | 
**did_infos** | [**Array&lt;DidInfo&gt;**](DidInfo.md) | (任意) グループに紐付いたDID情報の配列 | [optional] 
**vc_infos** | [**Array&lt;VcInfo&gt;**](VcInfo.md) | (任意) グループに紐付いたVC情報の配列 | [optional] 
**vp_infos** | [**Array&lt;VpInfo&gt;**](VpInfo.md) | (任意) グループに紐付いたVP情報の配列 | [optional] 
**vc_schemas** | [**Array&lt;VcSchema&gt;**](VcSchema.md) | (任意) グループに紐付いたVCスキーマの配列 | [optional] 
**created_at** | **String** | (必須) グループの作成日時 | 
**updated_at** | **String** | (必須) グループの最終更新日時 | 

