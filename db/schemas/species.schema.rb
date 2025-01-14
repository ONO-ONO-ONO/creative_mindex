create_table :species, force: :cascade, charset: "utf8mb4", collation: "utf8mb4_bin" do |t|
  t.string :name, null: false # 名前
  t.string :eng_name # 英名
  t.integer :code, null: false # コード
  t.integer :parent_code # 親コード
  t.boolean :major_flg, null: false, default: true # メジャーフラグ
end

# 種（しゅ、species）とは、
# 生物分類上の基本単位である。
# 2004年時点で命名済みの種だけで200万種あり、
# 実際はその数倍から十数倍以上の種の存在が推定される。
# 新しい種が形成される現象、メカニズムを種分化という。

# ラテン語の species より、単数の場合は省略形 sp. で、
# 複数の場合は省略形 spp. で書き表す。
# 「イヌ属のある種」であれば「Canis sp.」、
# 「ネコ属のいくつかの種」であれば、「Felis spp.」と表現する。

# また、species の複数形は species です。
# 単数形と複数形が同じ形の名詞で、
# 生物を似た性質を持つ物同士で分類する際の基本単位のひとつです。
