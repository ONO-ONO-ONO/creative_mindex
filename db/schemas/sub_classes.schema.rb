create_table :sub_classes, force: :cascade, charset: "utf8mb4", collation: "utf8mb4_bin" do |t|
  t.string :name, null: false # 名前
  t.string :code, null: false # コード
end

# 亜綱（あこう、英: subclass、羅: subclassis）は、
# 綱の下に位置する分類である。
