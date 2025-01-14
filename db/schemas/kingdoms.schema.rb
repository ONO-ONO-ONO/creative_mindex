create_table :kingdoms, force: :cascade, charset: "utf8mb4", collation: "utf8mb4_bin" do |t|
  t.string  :name, null: false # 名前
  t.integer :code, null: false # コード
end

# 界（かい、英: kingdom、羅: regnum）は、
# 生物学におけるドメインに次いで2番目に高い分類階級である。
# 界は門と呼ばれるより小さなグループに分けられる。
