class RedList < ApplicationRecord
  # レッドリスト

  include RansackAll

  belongs_to :animal, foreign_key: :red_list_code, primary_key: :code, optional: true

  # テーブル名の小文字版文字列を取得
  def self.lower_case_table_name = "red_list"
end
