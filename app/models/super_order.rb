class SuperOrder < ApplicationRecord
  # 上目(じょうもく)

  include RansackAll

  belongs_to :animal, foreign_key: :super_order_code, primary_key: :code, optional: true

  # テーブル名の小文字版文字列を取得
  def self.lower_case_table_name = "super_order"
end
