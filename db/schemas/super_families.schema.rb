create_table :super_families, force: :cascade, charset: "utf8mb4", collation: "utf8mb4_bin" do |t|
  t.string :name, null: false # 名前
  t.string :eng_name # 英名
  t.string :code, null: false # コード
  t.string :parent_code # 親コード
  t.boolean :major_flg, null: false, default: true # メジャーフラグ
  t.integer :sort # ソート
end

# 上科（じょうか、英: superfamily）は、
# 科の上に位置する分類である。
