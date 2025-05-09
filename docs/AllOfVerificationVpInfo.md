# SwaggerClient::AllOfVerificationVpInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | (必須) VP情報の識別子 | 
**label** | **String** | (任意) VPの識別や整理などの管理するにあったてメタデータとして任意で設定可能な単語のフレーズ | [optional] 
**hash** | **String** | (必須) VPのハッシュ値。VPの保管における識別子として用いる。 | [optional] 
**description** | **String** | (任意) VCの発行目的や用途など任意で設定可能な説明文。 | [optional] 
**raw** | **String** | (必須) VPのバイナリデータ | 
**created_by** | [****](.md) | (任意) VP情報を生成したユーザーアカウント | 
**user** | [****](.md) | (任意) VP情報と紐付いたアカウント | [optional] 
**vc_infos** | [**Array&lt;VcInfo&gt;**](VcInfo.md) | (任意) VPを生成する元となるVC情報 | [optional] 
**groups** | [**Array&lt;Group&gt;**](Group.md) | (任意) VP情報に紐づいたグループの配列 | [optional] 
**did_info** | [****](.md) | (任意) VP生成時の署名に用いるDID情報の識別子 | [optional] 
**verifications** | [**Array&lt;Verification&gt;**](Verification.md) | (任意) VPの検証結果 | [optional] 
**created_at** | **String** | (必須) VP情報の作成日時 | 
**updated_at** | **String** | (必須) VP情報の更新日時 | 

