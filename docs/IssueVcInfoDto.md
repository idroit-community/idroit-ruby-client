# SwaggerClient::IssueVcInfoDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**issuer** | **String** | (必須) VCの発行者の識別子として用いる文字列の値。現在はDIDのみがサポートされていますが、今後のアップデートでDID以外の文字列をサポートする予定です。 | 
**credential_subject** | **Object** | (必須) VCの主張内容(クレーム)となる値のオブジェクト型の値 | 
**label** | **String** | (任意) VCの識別や整理などの管理するにあったてメタデータとして任意で設定可能な単語のフレーズ。(例: vc-for-project1) | [optional] 
**description** | **String** | (任意) VCの発行目的や用途など任意で設定可能な説明文 | [optional] 

