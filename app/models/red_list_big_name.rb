class RedListBigName < ApplicationRecord
  # レッドリスト

  include RansackAll

  belongs_to :red_list, foreign_key: :big_code, primary_key: :code, optional: true

  # テーブル名の小文字版文字列を取得
  def self.lower_case_table_name = "red_list_big_name"
end
