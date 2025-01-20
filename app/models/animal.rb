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
  has_one :genuses, foreign_key: :code, primary_key: :genus_code
  has_one :sub_genuses, foreign_key: :code, primary_key: :sub_genus_code
  has_one :species, foreign_key: :code, primary_key: :species_code
  has_one :sub_species, foreign_key: :code, primary_key: :sub_species_code
  has_one :red_list, foreign_key: :code, primary_key: :red_list_code
  has_many :animal_image, foreign_key: :animal_id, primary_key: :id

  # カテゴリー(全掲載)
  def category_all
    category_all = ""
    category_all += self.domain&.name.to_s if self.domain_code.present?
    category_all += self.kingdom&.name.to_s if self.kingdom_code.present?
    category_all += self.super_phylum&.name.to_s if self.super_phylum_code.present?
    category_all += self.phylum&.name.to_s if self.phylum_code.present?
    category_all += self.sub_phylum&.name.to_s if self.sub_phylum_code.present?
    category_all += self.super_classes&.name.to_s if self.super_class_code.present?
    category_all += self.classes&.name.to_s if self.class_code.present?
    category_all += self.sub_classes&.name.to_s if self.sub_class_code.present?
    category_all += self.infra_classes&.name.to_s if self.infra_class_code.present?
    category_all += self.super_order&.name.to_s if self.super_order_code.present?
    category_all += self.order&.name.to_s if self.order_code.present?
    category_all += self.sub_order&.name.to_s if self.sub_order_code.present?
    category_all += self.infra_order&.name.to_s if self.infra_order_code.present?
    category_all += self.super_family&.name.to_s if self.super_family_code.present?
    category_all += self.family&.name.to_s if self.family_code.present?
    category_all += self.sub_family&.name.to_s if self.sub_family_code.present?
    category_all += self.genuses&.name.to_s if self.genus_code.present?
    category_all += self.sub_genuses&.name.to_s if self.sub_genus_code.present?
    category_all += self.species&.name.to_s if self.species_code.present?
    category_all += self.sub_species&.name.to_s if self.sub_species_code.present?
    category_all
  end

  # カテゴリー(ショート掲載ver: 綱・目・科・属・種) ※亜種が存在する場合は種では無く亜種を表示
  def category_short
    category_short = ""
    category_short += self.classes&.name.to_s if self.class_code.present?
    category_short += self.order&.name.to_s if self.order_code.present?
    category_short += self.family&.name.to_s if self.family_code.present?
    category_short += self.genuses&.name.to_s if self.genus_code.present?
    category_short += self.species&.name.to_s if self.species_code.present? && self.sub_species_code.blank?
    category_short += self.sub_species&.name.to_s if self.sub_species_code.present?
    category_short
  end

  # メイン画像取得
  def get_main_image
    self.animal_image&.find_by(main_flg: true)&.img_url
  end

  # 一覧アイコン画像取得
  def get_icon_image
    self.animal_image&.find_by(icon_flg: true)&.img_url
  end
end
