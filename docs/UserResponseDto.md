# SwaggerClient::UserResponseDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ユーザーアカウントの識別子 | 
**name** | **String** | ユーザーアカウントの名前 | 
**email** | **String** | ユーザーアカウントのメールアドレス | 
**need_activate_flow** | **BOOLEAN** | ユーザーアクティベーション(true: アクティブ /false: 停止中) | 
**status** | **String** | ユーザーのアカウントステータス(\&quot;inactive\&quot;: アクティブ未完了, \&quot;acrivating\&quot;: アクティブ作業途中, \&quot;active\&quot;: アクティブ中, \&quot;deactive\&quot;: 論理削除済) | 
**role** | **String** | ユーザーのアカウントロール(\&quot;admin\&quot;, \&quot;user\&quot;, \&quot;client\&quot;) | 
**user_tokens** | [**Array&lt;UserToken&gt;**](UserToken.md) | (任意) ユーザーアカウントがアップロードしたファイルの配列。 | 
**created_by** | [**AllOfUserResponseDtoCreatedBy**](AllOfUserResponseDtoCreatedBy.md) | ユーザーアカウントを作成したユーザーアカウント | 
**did_infos** | [**Array&lt;DidInfo&gt;**](DidInfo.md) | ユーザーアカウントに紐付けられたDID情報の配列 | [optional] 
**vc_infos** | [**Array&lt;VcInfo&gt;**](VcInfo.md) | ユーザーアカウントに紐付けられたVC情報の配列 | [optional] 
**vp_infos** | [**Array&lt;VpInfo&gt;**](VpInfo.md) | ユーザーアカウントに紐付けられたVP情報の配列 | [optional] 
**groups** | [**Array&lt;Group&gt;**](Group.md) | ユーザーアカウントが作成したグループの配列 | [optional] 
**created_users** | [**Array&lt;User&gt;**](User.md) | ユーザーアカウントに紐付けされたVP情報の配列 | [optional] 
**created_vc_infos** | [**Array&lt;VcInfo&gt;**](VcInfo.md) | ユーザーが作成したVC情報の配列 | [optional] 
**created_vp_infos** | [**Array&lt;VpInfo&gt;**](VpInfo.md) | ユーザーが作成したVP情報の配列 | [optional] 
**created_groups** | [**Array&lt;Group&gt;**](Group.md) | ユーザーアカウントが作成したグループの配列 | [optional] 
**created_did_infos** | [**Array&lt;DidInfo&gt;**](DidInfo.md) | ユーザーが作成したDID情報の配列 | [optional] 
**created_vc_schemas** | [**Array&lt;VcSchema&gt;**](VcSchema.md) | ユーザーが作成したVCスキーマの配列 | [optional] 
**created_verifications** | [**Array&lt;Verification&gt;**](Verification.md) | ユーザーアカウントが実行した検証結果の配列 | [optional] 
**created_mails** | [**Array&lt;Mail&gt;**](Mail.md) | Admin権限アカウントが送信したメールの配列 | [optional] 
**created_files** | **Array&lt;File&gt;** | ユーザーアカウントに紐付けされたファイルの配列 | [optional] 
**created_at** | **String** | ユーザーアカウントの作成日時 | 
**updated_at** | **String** | ユーザーアカウントの更新日時 | 

