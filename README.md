# welcome!👋 Go to boiler template project!

# Set up
## Server
- サンプルプロジェクト用に`Serverpod`という、Dartで記述できるオープンソースのアプリサーバーを用いています
- 以下に導入手順を記述します
  - 前もって、`DockerDesktop`と`Flutter`がインストールされている前提で進めます

1. serverpodをinstall
```
$ dart pub global activate serverpod_cli
```
2. installできているかの確認
```
$ serverpod
```
※エラーが出た場合は、パスが通っているかを確認してください

3. サーバーを起動します
```
$ cd boiler_template/packages/server/sample_server/sample_server_server
$ docker compose up --build --detach
$ dart bin/main.dart --apply-migrations
```
※2024/04/23時点で、serverpodの最高バージョンが`dart v3.1.0`となるため、current flutter SDKのバージョンを`v3.19.2`としてください。

## DB
ServerpodのDBはデフォルトで`PostgreSQL`が搭載されています。

これらの編集 / 反映 / 起動の方法を以下に記述します。

1. 新規追加 or 編集
DBに使用するデータは`sample_server_server/lib/src/models`に`.yaml`で管理しています。  
DBとしてのModelを定義したい場合は、`.yaml`内に以下のように記述してください。
```yaml
class: Todo
table: todo // ここの行を追加する
fields:
  title: String
  message: String
  done: bool
```
2. 反映
- `.yaml`を編集したら以下を実行
```
$ serverpod generate
```
- 完了後migrationファイルを更新する必要があるため以下を実施
```
$ serverpod create-migration
```

3. 起動
- この時、既にサーバーを起動していた場合、サーバーを落としてから再度以下で起動して直してください
```
$ dart bin/main.dart --apply-migrations
```

## 認証情報
`serverpod`でプロジェクトを作成した際に、自動で認証用のパスワードが発行される  
当たり前だが、こちらはリポートに配置する情報ではないのでignore指定されている。  
が、サンプルのテンプレートとなるため、今後、本プロジェクトを追加した人が正常にサーバーが立ち上がらない可能性もあるので、以下を追加する手順を記載しておく。
1. `packages/server/sample/sample_server/config`に`passwords.yaml` を作成
2. 以下の内容をペーストしてください
```yaml
# Use this file to store passwords to services that your server you use. When
# the server starts, the passwords will be automatically loaded and can be
# accessed from the `session.passwords` field. If you don't have access to a
# session object, passwords can also be accessed from
# `Serverpod.instance.passwords`. You can provide different passwords for
# different run configurations. If you want the same password for any
# configuration used, place it under `shared`.
#
# Note that this file should not be under version control. Store it in a safe
# place.

# Save passwords used across all configurations here.
shared:
  mySharedPassword: 'my password'

# These are passwords used when running the server locally in development mode
development:
  database: 'VEJZhV6q-lcK693MJSpRzJ4vyXqhg1mQ'
  redis: 'Y3RFzNtmfvxfm7998mcn0RczrK44hIRT'

  # The service secret is used to communicate between servers and to access the
  # service protocol.
  serviceSecret: 'YqIMyYdC3J0QO1enL2imbiGJn_sQVUob'

# Passwords used in your staging environment if you use one. The default setup
# use a password for Redis.
staging:
  database: 'kntyotUM8ewVZZtyzKVYnB79IlealbsZ'
  serviceSecret: 'c_JCDeP3n85lo_IS0CQUrGPy_-5LAXU_'

# Passwords used in production mode.
production:
  database: 'MgQiscSe9CSZlZ8g3leoW8BdpFxmAB4c'
  serviceSecret: 'B_EWi831Ng_5aPnejmThGJrAK_WCW95G'

```
これで、ドッカーコンテナを再起動し、サーバーを立ち上げてください。

## tips
### docker containerが正常に立ち上がらない
- この場合、docker内に割り当てられたポート番号が重複している可能性があるため、対象のcontainerを削除するか、ポート番号を変更してください
```
$ docker ps -a
$ docker rm --force ${対象のコンテナID} 
```