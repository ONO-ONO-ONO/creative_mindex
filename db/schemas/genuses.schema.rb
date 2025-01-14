create_table :genuses, force: :cascade, charset: "utf8mb4", collation: "utf8mb4_bin" do |t|
  t.string :name, null: false # 名前
  t.string :code, null: false # コード
end

# 属（ぞく、ラテン語: genus, pl.:genera）は、
# 生物分類のリンネ式階級分類における基本的階級の1つ、
# および、その階級に属するタクソンである。

# 属は科の下・種の上に位置する。
# 属の下に亜属（subgenus、pl.: subgenera）をもうけることがある。

# また、「genus」という単語の複数形は「genera」と表記されることもあるが、
# 本アプリでは解りやすいように「genuses」で統一とする。
