create_table :animals, force: :cascade, charset: "utf8mb4", collation: "utf8mb4_bin" do |t|
  t.string  :name, null: false # 名前
  t.string  :scientific_name # 学名
  t.string  :wa_name # 和名
  t.string  :kanji_name # 漢字名

  t.float :long # 体長(cm)
  t.float :tall # 体高(cm)
  t.float :weight # 体重(kg)

  t.string :domain_code # ドメイン
  t.string :kingdom_code # 界(かい)
  t.string :phylum_code # 門(もん)
  t.string :sub_phylum_code # 亜門(あもん)
  t.string :class_code # 綱(こう)
  t.string :sub_class_code # 亜綱(あこう)
  t.string :order_code # 目(もく)
  t.string :sub_order_code # 亜目(あもく)
  t.string :family_code # 科(か)
  t.string :sub_family_code # 亜科(あか)
  t.string :genus_code # 属(ぞく)
  t.string :sub_genus_code # 亜属(あぞく)
  t.string :species_code # 種(しゅ)
  t.string :sub_species_code # 亜種(あしゅ)

  t.string :red_list_code # レッドリスト

  t.text :note # ノート
end
