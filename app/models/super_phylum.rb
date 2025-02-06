class SuperPhylum < ApplicationRecord
  # 上門(じょうもん)

  include RansackAll

  belongs_to :animal, foreign_key: :super_phylum_code, primary_key: :code, optional: true

  # テーブル名の小文字版文字列を取得
  def self.lower_case_table_name = "super_phylum"
end
