create_table :kingdoms, force: :cascade, charset: "utf8mb4", collation: "utf8mb4_bin" do |t|
  t.string :name, null: false # 名前
  t.string :eng_name # 英名
  t.integer :code, null: false # コード
  t.integer :parent_code # 親コード
  t.boolean :major_flg, null: false, default: true # メジャーフラグ
  t.integer :sort # ソート
end

# 界（かい、英: kingdom、羅: regnum）は、
# 生物学におけるドメインに次いで2番目に高い分類階級である。
# 界は門と呼ばれるより小さなグループに分けられる。
