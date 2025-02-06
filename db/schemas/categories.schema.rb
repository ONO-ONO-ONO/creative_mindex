create_table :categories, force: :cascade, charset: "utf8mb4", collation: "utf8mb4_bin" do |t|
  t.string :name, null: false # 名前
  t.string :small_schema # 小文字テーブル名
  t.string :big_schema # 大文字テーブル名
  t.string :plural_schema # 複数形の文字テーブル名
  t.text :note # ノート
  t.integer :sort # ソート
end

# 生物分類学において、ドメイン（英: domain、羅: regio）は、
# ドミニオン（dominion、dominium）、上界（superkingdom、superregnum）、レルム（realm）、帝国（empire、imperium）とも呼ばれ、
# すべての生物を合わせた分類階級の最高位である。
# ドメインは、1990年に、カール・ウーズ、オットー・カンドラー（英語版）、マーク・ウィーリス（英語版）によって
# 考案された3ドメイン系（英語版）の分類体系で導入された概念である。
