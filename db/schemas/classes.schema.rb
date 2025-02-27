create_table :classes, force: :cascade, charset: "utf8mb4", collation: "utf8mb4_bin" do |t|
  t.string :name, null: false # 名前
  t.string :eng_name # 英名
  t.string :code, null: false # コード
  t.string :parent_code # 親コード
  t.boolean :major_flg, null: false, default: true # メジャーフラグ
  t.integer :sort # ソート
end

# 綱（こう、英: class、羅: classis）は、
# 生物の分類における階級のひとつで、
# その階級に含まれるそれぞれのタクソンも綱と呼ぶ。
# 門と目の間に位置し、綱の下に亜綱（あこう、英: subclass、羅: subclassis）をおく場合もある。
