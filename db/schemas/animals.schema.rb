create_table :animals, force: :cascade, charset: "utf8mb4", collation: "utf8mb4_bin" do |t|
  t.string :name, null: false # 名前
  t.string :scientific_name # 学名
  t.string :wa_name # 和名
  t.string :kanji_name # 漢字名

  t.float :avg_long # 平均_体長(cm) (尾を含めない)
  t.float :min_long # 最小_体長(cm) (尾を含めない)
  t.float :max_long # 最大_体長(cm) (尾を含めない)
  t.float :avg_long_tail # 平均_尾長(cm)
  t.float :min_long_tail # 最小_尾長(cm)
  t.float :max_long_tail # 最大_尾長(cm)
  t.float :avg_tall # 平均_体高(cm)
  t.float :min_tall # 最小_体高(cm)
  t.float :max_tall # 最大_体高(cm)
  t.float :avg_weight # 平均_体重(kg)
  t.float :min_weight # 最小_体重(kg)
  t.float :max_weight # 最大_体重(kg)

  t.string :domain_code # ドメイン

  t.string :kingdom_code # 界(かい)

  t.string :super_phylum_code # 上門(じょうもん)
  t.string :phylum_code # 門(もん)
  t.string :sub_phylum_code # 亜門(あもん)

  t.string :super_class_code # 上綱(じょうこう)
  t.string :class_code # 綱(こう)
  t.string :sub_class_code # 亜綱(あこう)
  t.string :infra_class_code # 下綱(かこう)

  t.string :super_order_code # 上目(じょうもく)
  t.string :order_code # 目(もく)
  t.string :sub_order_code # 亜目(あもく)
  t.string :infra_order_code # 下目(かもく)

  t.string :super_family_code # 上科(じょうか)
  t.string :family_code # 科(か)
  t.string :sub_family_code # 亜科(あか)

  t.string :genus_code # 属(ぞく)
  t.string :sub_genus_code # 亜属(あぞく)

  t.string :species_code # 種(しゅ)
  t.string :sub_species_code # 亜種(あしゅ)

  t.string :red_list_code # レッドリスト

  t.text :note # ノート
end
