=begin
#iDroit Dashboard Admin API

#     これは[株式会社フォアー](https://www.fore-co.ltd/ja/)が開発するを使ったDecentralizd Identifiers / Verifiable Credentials(DID/VC)に関係する機能を簡単に利用するための REST API です。現在以下のユースケースをサポートしています。これは今後も拡張されていきます。     - DIDの生成:      - グループ管理機能       - (企業/プロジェクトのまとまり)ごとにユーザー、クライアント、証明書(VC)スキーマを紐付けて管理する。          詳細は以下を参照してください。     - [idroit dashboard admin UI](https://admin.idroit-dashboard.com)     - [idroit dashboard公式ホームページ]()     - [idroit dashboard操作マニュアル]()      以下は関連リンクです。     - [Universal Resolver](https://dev.uniresolver.io/)     - [W3C DID Core 1.0](https://www.w3.org/TR/did-core/)     - [Verifiable Credentials Data Model v2.0](https://www.w3.org/TR/vc-data-model-2.0/)   

OpenAPI spec version: 0.9.2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::VpInfosApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'VpInfosApi' do
  before do
    # run before each test
    @instance = SwaggerClient::VpInfosApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VpInfosApi' do
    it 'should create an instance of VpInfosApi' do
      expect(@instance).to be_instance_of(SwaggerClient::VpInfosApi)
    end
  end

  # unit tests for vp_infos_controller_add_label
  # VP情報へのラベル追加
  # リクエストパラメータのidで指定された単一のVP情報に対して、任意の管理用ラベルを追加します。
  # @param body 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [VpInfoResponseDto]
  describe 'vp_infos_controller_add_label test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for vp_infos_controller_connect_user
  # VP情報へのクライアントアカウント紐付け
  # VP情報の所有者、関係者などの管理者としてクライアントアカウントを紐付けます。
  # @param body 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'vp_infos_controller_connect_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for vp_infos_controller_create
  # 新規VP生成
  # 新規VPを生成します。
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'vp_infos_controller_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for vp_infos_controller_disconnect_user
  # VP情報のクライアントアカウント紐付け解除
  # VP情報に紐付いたクライアントアカウントの紐付けを解除します。
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'vp_infos_controller_disconnect_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for vp_infos_controller_find_all
  # VP情報一覧取得
  # アプリケーションが管理するVP情報を一覧として値を返します。
  # @param [Hash] opts the optional parameters
  # @option opts [BigDecimal] :page (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1)
  # @option opts [BigDecimal] :limit (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10)
  # @option opts [String] :label (任意) 例: \&quot;vc-for-project1\&quot;
  # @option opts [String] :description (任意) 
  # @return [VpInfoResponseDto]
  describe 'vp_infos_controller_find_all test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for vp_infos_controller_find_one
  # VP情報詳細取得
  # リクエストパラメータのidで指定された単一のVP情報の詳細情報の値を返します。
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [VpInfoDetailDto]
  describe 'vp_infos_controller_find_one test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for vp_infos_controller_upload
  # 新規VPアップロード
  # 外部で発行された既存VPをアップロードし、本アプリケーションに保存します。。
  # @param credential_object 
  # @param label 
  # @param description 
  # @param [Hash] opts the optional parameters
  # @return [VpInfoResponseDto]
  describe 'vp_infos_controller_upload test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
