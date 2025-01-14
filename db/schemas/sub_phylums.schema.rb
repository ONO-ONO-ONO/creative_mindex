create_table :sub_phylums, force: :cascade, charset: "utf8mb4", collation: "utf8mb4_bin" do |t|
  t.string  :name, null: false # 名前
  t.integer :code, null: false # コード
end

# 亜門（あもん、英: subphylum, subdivision）は、
# 門の下に位置する分類である。
