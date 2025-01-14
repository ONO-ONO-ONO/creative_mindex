create_table :red_lists, force: :cascade, charset: "utf8mb4", collation: "utf8mb4_bin" do |t|
  t.string  :name, null: false # 名前
  t.integer :code, null: false # コード
end

# レッドリスト（Red List）
# 生物種の保全状況（ほぜんじょうきょう、Conservation status、保全状態とも）とは、
# ある生物の種（それ以下の分類群も含む）が現在、
# または将来的に存在している見込みを表す指標である。
# 保全状況を評価する際には、現在何個体生存しているか、といった単純なことだけではなく、
# 個体数の増減率や、繁殖の成功率、既知の脅威などさまざまな要因が考慮される。
