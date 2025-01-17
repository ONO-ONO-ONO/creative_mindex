class Animal < ApplicationRecord
  # 動物マスタ

  # has_one → belongs_toという繋がりでテーブル紐づけが可能。
  # foreign_keyは関連先のカラム名、primary_keyは元のモデルのカラム名を指定
  has_one :domain, foreign_key: :code, primary_key: :domain_code
  has_one :kingdom, foreign_key: :code, primary_key: :kingdom_code
  has_one :super_phylum, foreign_key: :code, primary_key: :super_phylum_code
  has_one :phylum, foreign_key: :code, primary_key: :phylum_code
  has_one :sub_phylum, foreign_key: :code, primary_key: :sub_phylum_code
  has_one :super_classes, foreign_key: :code, primary_key: :super_class_code
  has_one :classes, foreign_key: :code, primary_key: :class_code
  has_one :sub_classes, foreign_key: :code, primary_key: :sub_class_code
  has_one :infra_classes, foreign_key: :code, primary_key: :infra_class_code
  has_one :super_order, foreign_key: :code, primary_key: :super_order_code
  has_one :order, foreign_key: :code, primary_key: :order_code
  has_one :sub_order, foreign_key: :code, primary_key: :sub_order_code
  has_one :infra_order, foreign_key: :code, primary_key: :sub_order_code

  has_one :super_family, foreign_key: :code, primary_key: :super_family_code
  has_one :family, foreign_key: :code, primary_key: :family_code
  has_one :sub_family, foreign_key: :code, primary_key: :sub_family_code
  has_one :genus, foreign_key: :code, primary_key: :genus_code
  has_one :sub_genus, foreign_key: :code, primary_key: :sub_genus_code
  has_one :species, foreign_key: :code, primary_key: :species_code
  has_one :sub_species, foreign_key: :code, primary_key: :sub_species_code
  has_one :red_list, foreign_key: :code, primary_key: :red_list_code

  def category_all
    # category_all = ""
    # category_all += self.

    # aaa
  end
end
