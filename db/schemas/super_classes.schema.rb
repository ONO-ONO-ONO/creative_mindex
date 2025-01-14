create_table :super_classes, force: :cascade, charset: "utf8mb4", collation: "utf8mb4_bin" do |t|
  t.string :name, null: false # 名前
  t.string :eng_name # 英名
  t.integer :code, null: false # コード
  t.integer :parent_code # 親コード
  t.boolean :major_flg, null: false, default: true # メジャーフラグ
  t.integer :sort # ソート
end

# 上綱（じょうこう、英: superclass）は、
# 綱の上に位置する分類である。
