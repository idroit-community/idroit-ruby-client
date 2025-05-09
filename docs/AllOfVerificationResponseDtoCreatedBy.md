# SwaggerClient::AllOfVerificationResponseDtoCreatedBy

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | アカウントの識別子 | 
**name** | **String** | アカウントの名前 | 
**email** | **String** | アカウントのメールアドレス | 
**password** | **String** | アカウントのパスワード(8文字以上20字未満) | 
**need_activate_flow** | **BOOLEAN** | (必須: {default: false}) アカウントの有効化フローが必要か否か(true: 必要 /false: 不要) | 
**status** | **String** | ユーザーのアカウントステータス | 
**role** | **String** | アカウントのロール(admin/user/clinet) | 
**created_by** | [****](.md) | (任意) このアカウントを作成したユーザー | [optional] 
**did_infos** | [**Array&lt;DidInfo&gt;**](DidInfo.md) | (任意) アカウントに紐付けされたDID情報の配列 | [optional] 
**vc_infos** | [**Array&lt;VcInfo&gt;**](VcInfo.md) | (任意) アカウントに紐付けされたVC情報の配列 | [optional] 
**vp_infos** | [**Array&lt;VpInfo&gt;**](VpInfo.md) | (任意) アカウントに紐付けされたVP情報の配列 | [optional] 
**groups** | [**Array&lt;Group&gt;**](Group.md) | (任意) アカウントに紐付けされたグループの配列 | [optional] 
**user_tokens** | [**Array&lt;UserToken&gt;**](UserToken.md) | (任意) ユーザーアカウントがアップロードしたファイルの配列。 | 
**created_users** | [**Array&lt;User&gt;**](User.md) | (任意) このユーザーによって作成されたアカウントの配列 | [optional] 
**created_vc_infos** | [**Array&lt;VcInfo&gt;**](VcInfo.md) | (任意) アカウントに紐付けされたVC情報の配列 | [optional] 
**created_vp_infos** | [**Array&lt;VpInfo&gt;**](VpInfo.md) | (任意) アカウントに紐付けされたVP情報の配列 | [optional] 
**created_groups** | [**Array&lt;Group&gt;**](Group.md) | (任意) アカウントに作成したグループの配列 | [optional] 
**created_did_infos** | [**Array&lt;DidInfo&gt;**](DidInfo.md) | (任意) アカウントが作成したDID情報の配列 | [optional] 
**created_vc_schemas** | [**Array&lt;VcSchema&gt;**](VcSchema.md) | (任意) ユーザーアカウントが作成したVCスキーマの配列。 | 
**created_verifications** | [**Array&lt;Verification&gt;**](Verification.md) | (任意) ユーザーアカウントが実行した検証結果の配列。 | 
**created_mails** | [**Array&lt;Mail&gt;**](Mail.md) | (任意) Admin権限アカウントが送信したメールの配列(Adminロール以外の場合、関係のないカラム) | [optional] 
**created_files** | **Array&lt;File&gt;** | (任意) ユーザーアカウントがアップロードしたファイルの配列。 | 
**created_at** | **String** | ユーザーアカウントの作成日時 | 
**updated_at** | **String** | ユーザーアカウントの更新日時 | 

