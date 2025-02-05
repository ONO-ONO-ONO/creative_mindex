create_table :red_list_big_names, force: :cascade, charset: "utf8mb4", collation: "utf8mb4_bin" do |t|
  t.string :name, null: false # 名前
  t.string :code, null: false # コード
  t.integer :sort # ソート
end

# レッドリスト大項目
