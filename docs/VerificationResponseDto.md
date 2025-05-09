# SwaggerClient::VerificationResponseDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | 検証結果の識別子 | 
**label** | **String** | 検証結果の識別や整理などの管理するにあったてメタデータとして任意で設定可能な単語のフレーズ。(例: verify-for-check) | 
**result** | **BOOLEAN** | (必須) VC/VPの検証結果(true: 検証に成功, false: 検証に失敗) | 
**created_by** | [**AllOfVerificationResponseDtoCreatedBy**](AllOfVerificationResponseDtoCreatedBy.md) | グループを作成したユーザーアカウント | 
**vc_info** | [**AllOfVerificationResponseDtoVcInfo**](AllOfVerificationResponseDtoVcInfo.md) | 検証を実行したVC情報の識別子 | 
**vp_info** | [**AllOfVerificationResponseDtoVpInfo**](AllOfVerificationResponseDtoVpInfo.md) | 検証を実行したVP情報の識別子 | 
**created_at** | **String** | 検証実行時の日時 | 
**updated_at** | **String** | 検証結果の最終更新日 | 

