create_table :sub_families, force: :cascade, charset: "utf8mb4", collation: "utf8mb4_bin" do |t|
  t.string  :name, null: false # 名前
  t.integer :code, null: false # コード
end

# 亜科（あか、英: subfamily）は、
# 科の下に位置する分類である。
