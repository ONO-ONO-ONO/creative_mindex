create_table :orders, force: :cascade, charset: "utf8mb4", collation: "utf8mb4_bin" do |t|
  t.string :name, null: false # 名前
  t.string :eng_name # 英名
  t.integer :code, null: false # コード
  t.integer :parent_code # 親コード
  t.boolean :major_flg, null: false, default: true # メジャーフラグ
end

# 目（もく、英: order、羅: ordo）は、
# 生物分類のリンネ式階級分類における基本的階級のひとつ、
# および、その階級に属するタクソンのことである。

# 目は、綱の下・科の上に位置する。
# さらに、目の上に上目（じょうもく、英: superorder、羅: supraordo）、
# 目の下に亜目（あもく、英: suborder、羅: subordo）、
# 亜目の下に下目（かもく、英: infraorder、羅: infraordo）、
# 下目の下に小目（しょうもく、英: parvorder、羅: parvordo）を置くことがある。
