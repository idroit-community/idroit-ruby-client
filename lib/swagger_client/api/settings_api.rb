=begin
#iDroit Dashboard Admin API

#     これは[株式会社フォアー](https://www.fore-co.ltd/ja/)が開発するを使ったDecentralizd Identifiers / Verifiable Credentials(DID/VC)に関係する機能を簡単に利用するための REST API です。現在以下のユースケースをサポートしています。これは今後も拡張されていきます。     - DIDの生成:      - グループ管理機能       - (企業/プロジェクトのまとまり)ごとにユーザー、クライアント、証明書(VC)スキーマを紐付けて管理する。          詳細は以下を参照してください。     - [idroit dashboard admin UI](https://admin.idroit-dashboard.com)     - [idroit dashboard公式ホームページ]()     - [idroit dashboard操作マニュアル]()      以下は関連リンクです。     - [Universal Resolver](https://dev.uniresolver.io/)     - [W3C DID Core 1.0](https://www.w3.org/TR/did-core/)     - [Verifiable Credentials Data Model v2.0](https://www.w3.org/TR/vc-data-model-2.0/)   

OpenAPI spec version: 0.9.2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

module SwaggerClient
  class SettingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get all admins
    # @param [Hash] opts the optional parameters
    # @return [SettingListResponseDto]
    def settings_controller_find_all(opts = {})
      data, _status_code, _headers = settings_controller_find_all_with_http_info(opts)
      data
    end

    # Get all admins
    # @param [Hash] opts the optional parameters
    # @return [Array<(SettingListResponseDto, Integer, Hash)>] SettingListResponseDto data, response status code and response headers
    def settings_controller_find_all_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsApi.settings_controller_find_all ...'
      end
      # resource path
      local_var_path = '/api/v1/settings'

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

      return_type = opts[:return_type] || 'SettingListResponseDto' 

      auth_names = opts[:auth_names] || ['bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsApi#settings_controller_find_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a specific admin
    # @param key 
    # @param [Hash] opts the optional parameters
    # @return [SettingResponseDto]
    def settings_controller_find_one(key, opts = {})
      data, _status_code, _headers = settings_controller_find_one_with_http_info(key, opts)
      data
    end

    # Get a specific admin
    # @param key 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SettingResponseDto, Integer, Hash)>] SettingResponseDto data, response status code and response headers
    def settings_controller_find_one_with_http_info(key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsApi.settings_controller_find_one ...'
      end
      # verify the required parameter 'key' is set
      if @api_client.config.client_side_validation && key.nil?
        fail ArgumentError, "Missing the required parameter 'key' when calling SettingsApi.settings_controller_find_one"
      end
      # resource path
      local_var_path = '/api/v1/settings/{key}'.sub('{' + 'key' + '}', key.to_s)

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

      return_type = opts[:return_type] || 'SettingResponseDto' 

      auth_names = opts[:auth_names] || ['bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsApi#settings_controller_find_one\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
