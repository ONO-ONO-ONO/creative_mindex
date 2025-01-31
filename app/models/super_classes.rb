class SuperClasses < ApplicationRecord
  # 上綱(じょうこう)

  belongs_to :animal, foreign_key: :super_class_code, primary_key: :code, optional: true

  # テーブル名の小文字版文字列を取得
  def self.lower_case_table_name = "super_class"
end
