class InfraOrder < ApplicationRecord
  # 下目(かもく)

  belongs_to :animal, foreign_key: :infra_order_code, primary_key: :code, optional: true

  # テーブル名の小文字版文字列を取得
  def self.lower_case_table_name = "infra_order"
end
