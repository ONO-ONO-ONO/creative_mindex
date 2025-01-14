create_table :sub_orders, force: :cascade, charset: "utf8mb4", collation: "utf8mb4_bin" do |t|
  t.string :name, null: false # 名前
  t.string :code, null: false # コード
end

# 亜綱（あもく、英: suborder、羅: subordo）は、
# 目の下に位置する分類である。

# 亜目の下に下目（かもく、英: infraorder、羅: infraordo）、
# 下目の下に小目（しょうもく、英: parvorder、羅: parvordo）を置くことがある。
