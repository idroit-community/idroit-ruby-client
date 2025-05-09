=begin
#iDroit Dashboard Admin API

#     これは[株式会社フォアー](https://www.fore-co.ltd/ja/)が開発するを使ったDecentralizd Identifiers / Verifiable Credentials(DID/VC)に関係する機能を簡単に利用するための REST API です。現在以下のユースケースをサポートしています。これは今後も拡張されていきます。     - DIDの生成:      - グループ管理機能       - (企業/プロジェクトのまとまり)ごとにユーザー、クライアント、証明書(VC)スキーマを紐付けて管理する。          詳細は以下を参照してください。     - [idroit dashboard admin UI](https://admin.idroit-dashboard.com)     - [idroit dashboard公式ホームページ]()     - [idroit dashboard操作マニュアル]()      以下は関連リンクです。     - [Universal Resolver](https://dev.uniresolver.io/)     - [W3C DID Core 1.0](https://www.w3.org/TR/did-core/)     - [Verifiable Credentials Data Model v2.0](https://www.w3.org/TR/vc-data-model-2.0/)   

OpenAPI spec version: 0.9.2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

module SwaggerClient
  class UsersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # ユーザーアカウント作成
    # 新規ユーザーアカウントを作成します。
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [UserResponseDto]
    def users_controller_create(body, opts = {})
      data, _status_code, _headers = users_controller_create_with_http_info(body, opts)
      data
    end

    # ユーザーアカウント作成
    # 新規ユーザーアカウントを作成します。
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserResponseDto, Integer, Hash)>] UserResponseDto data, response status code and response headers
    def users_controller_create_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.users_controller_create ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling UsersApi.users_controller_create"
      end
      # resource path
      local_var_path = '/api/v1/users'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'UserResponseDto' 

      auth_names = opts[:auth_names] || ['bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#users_controller_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # アカウントへの鍵のメール送信
    # クライアントアカウントに紐付いたDIDの鍵情報をメールで送信し、共有します。
    # @param id 
    # @param key_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def users_controller_export_key(id, key_id, opts = {})
      users_controller_export_key_with_http_info(id, key_id, opts)
      nil
    end

    # アカウントへの鍵のメール送信
    # クライアントアカウントに紐付いたDIDの鍵情報をメールで送信し、共有します。
    # @param id 
    # @param key_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def users_controller_export_key_with_http_info(id, key_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.users_controller_export_key ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.users_controller_export_key"
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling UsersApi.users_controller_export_key"
      end
      # resource path
      local_var_path = '/api/v1/users/{id}/keys/{keyId}/mail'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'keyId' + '}', key_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#users_controller_export_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # ユーザーアカウント一覧取得
    # ユーザーアカウントを一覧として値を返します。
    # @param [Hash] opts the optional parameters
    # @option opts [BigDecimal] :page (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1)
    # @option opts [BigDecimal] :limit (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10)
    # @option opts [String] :name (任意) 例: \&quot;Jhon Doe\&quot;
    # @option opts [String] :email (任意) 例: \&quot;client1@email.com\&quot;
    # @option opts [String] :status (任意) 例: \&quot;active\&quot;
    # @option opts [String] :role (任意) 例: \&quot;client\&quot;
    # @option opts [BOOLEAN] :need_activate_flow (任意) 例: true, false
    # @return [UsersResponseDto]
    def users_controller_find_all(opts = {})
      data, _status_code, _headers = users_controller_find_all_with_http_info(opts)
      data
    end

    # ユーザーアカウント一覧取得
    # ユーザーアカウントを一覧として値を返します。
    # @param [Hash] opts the optional parameters
    # @option opts [BigDecimal] :page (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1)
    # @option opts [BigDecimal] :limit (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10)
    # @option opts [String] :name (任意) 例: \&quot;Jhon Doe\&quot;
    # @option opts [String] :email (任意) 例: \&quot;client1@email.com\&quot;
    # @option opts [String] :status (任意) 例: \&quot;active\&quot;
    # @option opts [String] :role (任意) 例: \&quot;client\&quot;
    # @option opts [BOOLEAN] :need_activate_flow (任意) 例: true, false
    # @return [Array<(UsersResponseDto, Integer, Hash)>] UsersResponseDto data, response status code and response headers
    def users_controller_find_all_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.users_controller_find_all ...'
      end
      if @api_client.config.client_side_validation && opts[:'status'] && !['inactive', 'activating', 'active', 'deactive'].include?(opts[:'status'])
        fail ArgumentError, 'invalid value for "status", must be one of inactive, activating, active, deactive'
      end
      if @api_client.config.client_side_validation && opts[:'role'] && !['admin', 'user', 'client'].include?(opts[:'role'])
        fail ArgumentError, 'invalid value for "role", must be one of admin, user, client'
      end
      # resource path
      local_var_path = '/api/v1/users'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'email'] = opts[:'email'] if !opts[:'email'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'role'] = opts[:'role'] if !opts[:'role'].nil?
      query_params[:'needActivateFlow'] = opts[:'need_activate_flow'] if !opts[:'need_activate_flow'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'UsersResponseDto' 

      auth_names = opts[:auth_names] || ['bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#users_controller_find_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # ユーザーアカウント詳細取得
    # リクエストパラメータのidで指定された単一の管理者アカウントの詳細情報の値を返します。
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [UserResponseDto]
    def users_controller_find_one(id, opts = {})
      data, _status_code, _headers = users_controller_find_one_with_http_info(id, opts)
      data
    end

    # ユーザーアカウント詳細取得
    # リクエストパラメータのidで指定された単一の管理者アカウントの詳細情報の値を返します。
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserResponseDto, Integer, Hash)>] UserResponseDto data, response status code and response headers
    def users_controller_find_one_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.users_controller_find_one ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.users_controller_find_one"
      end
      # resource path
      local_var_path = '/api/v1/users/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'UserResponseDto' 

      auth_names = opts[:auth_names] || ['bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#users_controller_find_one\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # ユーザーアカウントへのアカウント有効化メール送信
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def users_controller_invite(id, opts = {})
      users_controller_invite_with_http_info(id, opts)
      nil
    end

    # ユーザーアカウントへのアカウント有効化メール送信
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def users_controller_invite_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.users_controller_invite ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.users_controller_invite"
      end
      # resource path
      local_var_path = '/api/v1/users/{id}/invite'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#users_controller_invite\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the count of clients
    # @param body 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def users_controller_register_user_did(body, id, opts = {})
      users_controller_register_user_did_with_http_info(body, id, opts)
      nil
    end

    # Get the count of clients
    # @param body 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def users_controller_register_user_did_with_http_info(body, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.users_controller_register_user_did ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling UsersApi.users_controller_register_user_did"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.users_controller_register_user_did"
      end
      # resource path
      local_var_path = '/api/v1/users/{id}/dids'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#users_controller_register_user_did\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # ユーザーアカウントへのアカウント有効化、登録フロー
    # @param body 
    # @param token 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def users_controller_registration(body, token, opts = {})
      users_controller_registration_with_http_info(body, token, opts)
      nil
    end

    # ユーザーアカウントへのアカウント有効化、登録フロー
    # @param body 
    # @param token 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def users_controller_registration_with_http_info(body, token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.users_controller_registration ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling UsersApi.users_controller_registration"
      end
      # verify the required parameter 'token' is set
      if @api_client.config.client_side_validation && token.nil?
        fail ArgumentError, "Missing the required parameter 'token' when calling UsersApi.users_controller_registration"
      end
      # resource path
      local_var_path = '/api/v1/users/registration'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'token'] = token

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#users_controller_registration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # ユーザーアカウント停止
    # リクエストパラメータのidで指定された単一のユーザーアカウントを停止します。
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def users_controller_remove(id, opts = {})
      users_controller_remove_with_http_info(id, opts)
      nil
    end

    # ユーザーアカウント停止
    # リクエストパラメータのidで指定された単一のユーザーアカウントを停止します。
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def users_controller_remove_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.users_controller_remove ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.users_controller_remove"
      end
      # resource path
      local_var_path = '/api/v1/users/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['bearer']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#users_controller_remove\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # アカウントへのDIDのメール送信
    # アカウントに紐付いたDIDをメールで送信し、共有します。
    # @param id 
    # @param did_info_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def users_controller_send_did(id, did_info_id, opts = {})
      users_controller_send_did_with_http_info(id, did_info_id, opts)
      nil
    end

    # アカウントへのDIDのメール送信
    # アカウントに紐付いたDIDをメールで送信し、共有します。
    # @param id 
    # @param did_info_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def users_controller_send_did_with_http_info(id, did_info_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.users_controller_send_did ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.users_controller_send_did"
      end
      # verify the required parameter 'did_info_id' is set
      if @api_client.config.client_side_validation && did_info_id.nil?
        fail ArgumentError, "Missing the required parameter 'did_info_id' when calling UsersApi.users_controller_send_did"
      end
      # resource path
      local_var_path = '/api/v1/users/{id}/dids/{didInfoId}/mail'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'didInfoId' + '}', did_info_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#users_controller_send_did\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # アカウントへのDIDのメール送信
    # アカウントに紐付いたDIDをメールで送信し、共有します。
    # @param id 
    # @param did_info_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def users_controller_send_key(id, did_info_id, opts = {})
      users_controller_send_key_with_http_info(id, did_info_id, opts)
      nil
    end

    # アカウントへのDIDのメール送信
    # アカウントに紐付いたDIDをメールで送信し、共有します。
    # @param id 
    # @param did_info_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def users_controller_send_key_with_http_info(id, did_info_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.users_controller_send_key ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.users_controller_send_key"
      end
      # verify the required parameter 'did_info_id' is set
      if @api_client.config.client_side_validation && did_info_id.nil?
        fail ArgumentError, "Missing the required parameter 'did_info_id' when calling UsersApi.users_controller_send_key"
      end
      # resource path
      local_var_path = '/api/v1/users/{id}/keys/{didInfoId}/mail'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'didInfoId' + '}', did_info_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#users_controller_send_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # アカウントへのVCのメール送信
    # アカウントに紐付いたVCをメールで送信し、共有します。
    # @param id 
    # @param vc_info_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def users_controller_send_vc(id, vc_info_id, opts = {})
      users_controller_send_vc_with_http_info(id, vc_info_id, opts)
      nil
    end

    # アカウントへのVCのメール送信
    # アカウントに紐付いたVCをメールで送信し、共有します。
    # @param id 
    # @param vc_info_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def users_controller_send_vc_with_http_info(id, vc_info_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.users_controller_send_vc ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.users_controller_send_vc"
      end
      # verify the required parameter 'vc_info_id' is set
      if @api_client.config.client_side_validation && vc_info_id.nil?
        fail ArgumentError, "Missing the required parameter 'vc_info_id' when calling UsersApi.users_controller_send_vc"
      end
      # resource path
      local_var_path = '/api/v1/users/{id}/vcs/{vcInfoId}/mail'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'vcInfoId' + '}', vc_info_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#users_controller_send_vc\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # ユーザーアカウント更新
    # リクエストパラメータのidで指定された単一のユーザーアカウント情報を更新します。
    # @param body 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [UserResponseDto]
    def users_controller_update(body, id, opts = {})
      data, _status_code, _headers = users_controller_update_with_http_info(body, id, opts)
      data
    end

    # ユーザーアカウント更新
    # リクエストパラメータのidで指定された単一のユーザーアカウント情報を更新します。
    # @param body 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserResponseDto, Integer, Hash)>] UserResponseDto data, response status code and response headers
    def users_controller_update_with_http_info(body, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.users_controller_update ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling UsersApi.users_controller_update"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.users_controller_update"
      end
      # resource path
      local_var_path = '/api/v1/users/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'UserResponseDto' 

      auth_names = opts[:auth_names] || ['bearer']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#users_controller_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
