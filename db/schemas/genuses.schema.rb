create_table :genuses, force: :cascade, charset: "utf8mb4", collation: "utf8mb4_bin" do |t|
  t.string :name, null: false # 名前
  t.string :eng_name # 英名
  t.integer :code, null: false # コード
  t.integer :parent_code # 親コード
  t.boolean :major_flg, null: false, default: true # メジャーフラグ
end

# 属（ぞく、ラテン語: genus, pl.:genera）は、
# 生物分類のリンネ式階級分類における基本的階級の1つ、
# および、その階級に属するタクソンである。

# 属は科の下・種の上に位置する。
# 属の下に亜属（subgenus、pl.: subgenera）をもうけることがある。

# また、「genus」という単語の複数形は「genera」と表記されることもあるが、
# 本アプリでは解りやすいように「genuses」で統一とする。
