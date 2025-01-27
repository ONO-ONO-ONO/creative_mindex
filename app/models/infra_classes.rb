class InfraClasses < ApplicationRecord
  # 下綱(かこう)

  belongs_to :animal, foreign_key: :infra_class_code, primary_key: :code, optional: true

  # テーブル名の小文字版文字列を取得
  def self.lower_case_table_name = "infra_class"
end
