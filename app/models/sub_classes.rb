class SubClasses < ApplicationRecord
  # 亜綱(あこう)

  include RansackAll

  belongs_to :animal, foreign_key: :sub_class_code, primary_key: :code, optional: true

  # テーブル名の小文字版文字列を取得
  def self.lower_case_table_name = "sub_class"
end
