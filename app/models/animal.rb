class Animal < ApplicationRecord
  # 動物マスタ

  include RansackAll

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

  # バリデーション
  validates :name, presence: true

  def self.active_all
    self.where(deleted_at: nil)
  end

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

  # 平均の体長取得
  def get_ave_long
    if self.avg_long.present?
      self.avg_long
    elsif self.min_long.present? && self.max_long.present?
      (self.min_long + self.max_long) / 2
    end
  end

  # 平均の体重取得
  def get_ave_weight
    if self.avg_weight.present?
      self.avg_weight
    elsif self.min_weight.present? && self.max_weight.present?
      (self.min_weight + self.max_weight) / 2
    end
  end

  # メイン画像取得
  def get_main_img_url
    self.animal_image&.find_by(main_flg: true)&.img_url
  end

  # 一覧アイコン画像取得
  def get_icon_img_url
    self.animal_image&.find_by(icon_flg: true)&.img_url
  end

  # CSVヘッダー行
  def self.csv_header
    [
      "id",
      "name",
      "scientific_name",
      "wa_name",
      "kanji_name",
      "avg_long",
      "min_long",
      "max_long",
      "avg_long_tail",
      "min_long_tail",
      "max_long_tail",
      "avg_tall",
      "min_tall",
      "max_tall",
      "avg_weight",
      "min_weight",
      "max_weight",
      "domain_code",
      "kingdom_code",
      "super_phylum_code",
      "phylum_code",
      "sub_phylum_code",
      "super_class_code",
      "class_code",
      "sub_class_code",
      "infra_class_code",
      "super_order_code",
      "order_code",
      "sub_order_code",
      "infra_order_code",
      "super_family_code",
      "family_code",
      "sub_family_code",
      "genus_code",
      "sub_genus_code",
      "species_code",
      "sub_species_code",
      "red_list_code",
      "note",
      "deleted_at"
    ]
  end

  # CSV出力データ
  def self.export_csv_data(records)
    export_csv_data = CSV.generate(headers: true, encoding: "UTF-8") do |csv|
      csv << self.name.constantize.csv_header # ヘッダー行
      records.each do |r|
        csv << [
          r.id,
          r.name,
          r.scientific_name,
          r.wa_name,
          r.kanji_name,
          r.avg_long,
          r.min_long,
          r.max_long,
          r.avg_long_tail,
          r.min_long_tail,
          r.max_long_tail,
          r.avg_tall,
          r.min_tall,
          r.max_tall,
          r.avg_weight,
          r.min_weight,
          r.max_weight,
          r.domain_code,
          r.kingdom_code,
          r.super_phylum_code,
          r.phylum_code,
          r.sub_phylum_code,
          r.super_class_code,
          r.class_code,
          r.sub_class_code,
          r.infra_class_code,
          r.super_order_code,
          r.order_code,
          r.sub_order_code,
          r.infra_order_code,
          r.super_family_code,
          r.family_code,
          r.sub_family_code,
          r.genus_code,
          r.sub_genus_code,
          r.species_code,
          r.sub_species_code,
          r.red_list_code,
          r.note,
          r.deleted_at
        ]
      end
    end
    export_csv_data
  end

  # CSVインポート
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      animal = find_by(id: row["﻿id"]) || new
      animal.attributes = row.to_hash.slice(
        "id",
        "name",
        "scientific_name",
        "wa_name",
        "kanji_name",
        "avg_long",
        "min_long",
        "max_long",
        "avg_long_tail",
        "min_long_tail",
        "max_long_tail",
        "avg_tall",
        "min_tall",
        "max_tall",
        "avg_weight",
        "min_weight",
        "max_weight",
        "domain_code",
        "kingdom_code",
        "super_phylum_code",
        "phylum_code",
        "sub_phylum_code",
        "super_class_code",
        "class_code",
        "sub_class_code",
        "infra_class_code",
        "super_order_code",
        "order_code",
        "sub_order_code",
        "infra_order_code",
        "super_family_code",
        "family_code",
        "sub_family_code",
        "genus_code",
        "sub_genus_code",
        "species_code",
        "sub_species_code",
        "red_list_code",
        "note",
        "deleted_at"
        ) # 必要なカラムを指定
      animal.save!
    end
  end
end
