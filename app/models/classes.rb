class Classes < ApplicationRecord
  # 綱(こう)

  belongs_to :animal, foreign_key: :class_code, primary_key: :code, optional: true

  # テーブル名の小文字版文字列を取得
  def self.lower_case_table_name = "class"
end
