# SwaggerClient::Mail

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | (必須) 送信済みメールの識別子 | 
**title** | **String** | (必須) 送信済みメールの件名 | 
**content** | **String** | (必須) 送信済みメールの内容 | 
**for_every_user** | **BOOLEAN** | (必須) 全てのuser権限アカウントに対して送信するか。(true: 全てのuser権限アカウントに送信, false: 全てのuser権限アカウントに送信しない) | 
**for_every_client** | **BOOLEAN** | (必須) 全てのclient権限アカウントに対して送信するか。(true: 全てのclient権限アカウントに送信, false: 全てのclient権限アカウントに送信しない) | 
**users** | [**Array&lt;User&gt;**](User.md) | (任意) メールの送信先となるユーザーアカウントの配列 | [optional] 
**groups** | [**Array&lt;Group&gt;**](Group.md) | (任意) メールの送信先となるグループの配列 | [optional] 
**created_by** | [**Array&lt;User&gt;**](User.md) | (必須) メール送信操作を行ったAdmin権限アカウント | [optional] 
**created_at** | **String** | (必須) メールの送信日時 | 
**updated_at** | **String** | (必須) メールの送信日時 | 

