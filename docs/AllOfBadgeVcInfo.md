# SwaggerClient::AllOfBadgeVcInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | (必須) VC情報の識別子 | 
**label** | **String** | (任意) VCの識別や整理などの管理するにあったてメタデータとして任意で設定可能な単語のフレーズ。(例: vc-for-project1) | 
**hash** | **String** | (必須) VCのハッシュ値。VCの保管における識別子として用いる。 | 
**description** | **String** | (任意) VCの発行目的や用途など任意で設定可能な説明文。 | 
**created_by** | [****](.md) | (任意) VC情報を生成したユーザーアカウント | 
**vc_schema** | [****](.md) | (任意) 発行したVCの元となるVCスキーマ | [optional] 
**user** | [****](.md) | (任意) VC情報と紐付いたアカウント | [optional] 
**vp_infos** | [**Array&lt;VpInfo&gt;**](VpInfo.md) | (任意) このVCを元に生成したVP情報の配列 | [optional] 
**groups** | [**Array&lt;Group&gt;**](Group.md) | (任意) VC情報に紐づいたグループの配列 | [optional] 
**badge** | [****](.md) | (任意) VC情報と紐付いたバッジ | [optional] 
**verifications** | [**Array&lt;Verification&gt;**](Verification.md) | (任意) このVCの検証結果の配列。 | [optional] 
**created_at** | **String** | (必須) VC情報の作成日時 | 
**updated_at** | **String** | (必須) VC情報の更新日時 | 

