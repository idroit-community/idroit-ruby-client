# SwaggerClient::GroupResponseDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | グループの識別子 | 
**name** | **String** |  グループの名前 | 
**status** | **String** | グループの状態(1: アクティブ, 0: 停止中) | 
**description** | **String** | グループの作成目的や用途など任意で設定可能な説明文 | 
**users** | [**Array&lt;User&gt;**](User.md) | グループに紐付いたユーザーアカウントの配列 | 
**created_by** | [**AllOfGroupResponseDtoCreatedBy**](AllOfGroupResponseDtoCreatedBy.md) | グループを作成したユーザーアカウント | 
**did_infos** | [**Array&lt;DidInfo&gt;**](DidInfo.md) | グループに紐付いたVC情報の配列 | 
**vc_infos** | [**Array&lt;VcInfo&gt;**](VcInfo.md) | グループに紐付いたVC情報の配列 | 
**vp_infos** | [**Array&lt;VpInfo&gt;**](VpInfo.md) | グループに紐付いたVP情報の配列 | 
**vc_schemas** | [**Array&lt;VcSchema&gt;**](VcSchema.md) | グループに紐付いたVCスキーマの配列 | 
**created_at** | **String** | グループの作成日時 | 
**updated_at** | **String** | グループの最終更新日時 | 

