class Domain < ApplicationRecord
  # ドメイン

  include RansackAll

  # optional: trueをつけることで、Domain を保存する際に Animal の存在を強制しなくなります。
  belongs_to :animal, foreign_key: :domain_code, primary_key: :code, optional: true

  # テーブル名の小文字版文字列を取得
  def self.lower_case_table_name = "domain"
end
