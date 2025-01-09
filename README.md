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
bundle exec ridgepole --config config/database.yml --env development --file db/Schemafile --apply
```