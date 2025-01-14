create_table :sub_species, force: :cascade, charset: "utf8mb4", collation: "utf8mb4_bin" do |t|
  t.string  :name, null: false # 名前
  t.integer :code, null: false # コード
end

# 亜種（あしゅ、英: subspecies）は、
# 種の下に位置する分類である。
# 新ラテン語もしくは英語の "subspecies" の和訳語で、
# しばしば subsp. や ssp. とも略記される。

# 動物学では種の直下の区分は亜種のみであるが、
# 植物学では変種および品種と併用している。
# 動物学では亜種の下位区分として品種を用いる場合があり、
# 犬種などがこれに該当するが、国際動物命名規約には規定されていない。
# 一般に動物学における亜種は、分類学的に識別される地域個体群のことをいう。
