# SwaggerClient::CreateBadgeDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**label** | **String** | (任意) バッジのタイトル | [optional] 
**description** | **String** | (任意) グループの作成目的や用途など任意で設定可能な説明文 | [optional] 
**issuer** | **String** | (必須) VCの発行者の識別子として用いる文字列の値。現在はDIDのみがサポートされていますが、今後のアップデートでDID以外の文字列をサポートする予定です。 | 
**credential_subject** | **Object** | (必須) VCの主張内容(クレーム)となる値のオブジェクト型の値 | 
**vc_schema_id** | **String** | (必須) 新規発行するVCの元となるVCスキーマの識別子 | 

