# SwaggerClient::AllOfVpInfoDidInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | (必須) DID情報の識別子 | 
**manage_uuid** | **String** | (必須) DID情報の管理に用いるユニークな識別子 | 
**did** | **String** | (必須) DID | 
**method** | **String** | (必須) DIDメソッド | 
**label** | **String** | (任意) DIDの識別や整理などの管理するにあったてメタデータとして任意で設定可能な単語のフレーズ。(例: did-for-project1) | 
**domain_name** | **String** | (任意) did:webメソッドでDIDを生成する際に必要なドメイン名。DIDによって指定されたドメインがドメインネームシステム(DNS)を通じて解決されるときのホスト名。did:webメソッド以外では必要のないカラムである。 | 
**exist_private_key** | **BOOLEAN** | (必須) DID情報に紐付いた秘密鍵を本アプリケーションで保管しているか否か | 
**description** | **String** | (任意) DID情報の生成目的や用途など任意で設定可能な説明文 | 
**user** | [****](.md) | (任意) DID情報に紐付いたアカウントの配列 | [optional] 
**created_by** | [****](.md) | (任意) DIDを生成したユーザーアカウント | 
**vp_infos** | [****](.md) | (任意) 生成時に署名にDIDを用いたVP情報 | [optional] 
**groups** | [**Array&lt;Group&gt;**](Group.md) | (任意) DID情報に紐づいたグループの配列 | [optional] 
**created_at** | **String** | (必須) DID情報の作成日時 | 
**updated_at** | **String** | (必須) DID情報の最終更新 | 

