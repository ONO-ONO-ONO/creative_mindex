create_table :sub_classes, force: :cascade, charset: "utf8mb4", collation: "utf8mb4_bin" do |t|
  t.string :name, null: false # 名前
  t.string :eng_name # 英名
  t.string :code, null: false # コード
  t.string :parent_code # 親コード
  t.boolean :major_flg, null: false, default: true # メジャーフラグ
  t.integer :sort # ソート
end

# 亜綱（あこう、英: subclass、羅: subclassis）は、
# 綱の下に位置する分類である。
