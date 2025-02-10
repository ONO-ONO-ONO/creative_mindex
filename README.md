# README

## 立ち上げコマンド
* サーバ立ち上げ
```
bundle exec rails s
```
* Rails 8.0 は以下コマンド推奨　
```
bin/dev
```
※「bin/dev」でProcfile.dev を使用し、Rails サーバー + Tailwind・esbuild などの開発ツールも同時に起動する。
　「bundle exec rails s」はGemfile.lock に記載されたバージョンの Rails でサーバーを起動。

* コンソール立ち上げ
```
bundle exec rails c
```

## ridgepole実行コマンド

* テーブル追加・カラムの追加
```
bundle exec ridgepole --config config/database.yml --env development --file db/schemas/Schemafile --apply
```

## seed_fu実行コマンド

* 実行コマンド
```
rails db:seed_fu
```

* 特定のseedファイル指定の場合
```
rails db:seed_fu FIXTURE_PATH=db/fixtures/hogehoge
```

* プリコンパイルを手動で実行
```
rails assets:precompile
```

* プリコンパイルを手動で削除する
```
rails assets:clobber
```

## DB変更系

* DB全削除 ※!!! データが消えるため注意 !!!※
```
rails db:drop
```

* エラーが出る場合のマスタテーブルカラム変更 ※!!! データが消えるため注意 !!!※
```
(/db/schema.rb のファイル内容を手動で前削除)
rails db:drop && \
bundle exec ridgepole --config config/database.yml --env development --file db/schemas/Schemafile --apply && \
rails db:migrate && \
rails db:seed_fu

```

* マスタを更新した際に実行
```
bundle exec ridgepole --config config/database.yml --env development --file db/schemas/Schemafile --apply && \
rails db:migrate && \
rails db:seed_fu

```
