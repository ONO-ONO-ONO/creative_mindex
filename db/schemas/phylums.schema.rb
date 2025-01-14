create_table :phylums, force: :cascade, charset: "utf8mb4", collation: "utf8mb4_bin" do |t|
  t.string :name, null: false # 名前
  t.string :eng_name # 英名
  t.integer :code, null: false # コード
  t.integer :parent_code # 親コード
  t.boolean :major_flg, null: false, default: true # メジャーフラグ
end

# 門（もん、英: phylum, division、複数形: phyla、羅: phylum, divisio）は、
# 生物分類のリンネ式階層分類における基本的分類階級のひとつであり、
# またその階級に属するタクソンのことである。生物全体はおよそ100の門に分類されているが、
# この数字は分類学者によって大きく異なる。界の下・綱の上に位置しており、
# 門の下に亜門（あもん、英: subphylum, subdivision）を置く場合もある。

# また、「phylum」という単語の複数形は本当は「phyla」であるが、
# 解りやすいように本アプリでは「phylums」で統一とする。
