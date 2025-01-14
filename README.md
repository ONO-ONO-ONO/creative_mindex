# README

## 立ち上げコマンド
* サーバ立ち上げ
```
bundle exec rails s
```

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

## DB変更系

* DB全削除 ※!!! データが消えるため注意 !!!※
```
rails db:drop
```

* エラーが出る場合のマスタテーブルカラム変更 ※!!! データが消えるため注意 !!!※
```
(/db/schema.rb のファイル内容を手動で前削除)
rails db:drop
bundle exec ridgepole --config config/database.yml --env development --file db/schemas/Schemafile --apply
rails db:migrate
rails db:seed_fu

```
