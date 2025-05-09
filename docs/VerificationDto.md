# SwaggerClient::VerificationDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**label** | **String** | (必須) 検証結果の識別や整理などの管理するにあったてメタデータとして任意で設定可能な単語のフレーズ。(例: verify-for-check) | [optional] 
**vc_info_id** | **String** | (任意) 検証を実行するVC情報の識別子。VC情報の識別子を指定して検証を実行する場合は必須。 | [optional] 
**vp_info_id** | **String** | (任意) 検証を実行するVP情報の識別子。VP情報の識別子を指定して検証を実行する場合は必須。 | [optional] 
**vc_object** | **Object** | (任意) 検証を実行するVCのJSONテキストデータ。VCのJSONテキストデータを入力して検証を実行する場合は必須。 | [optional] 
**vp_object** | **Object** | (任意) 検証を実行するVPのJSONテキストデータ。VPのJSONテキストデータを入力して検証を実行する場合は必須。 | [optional] 

