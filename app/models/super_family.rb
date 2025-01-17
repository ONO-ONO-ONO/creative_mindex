class SuperFamily < ApplicationRecord
  # 上科(じょうか)

  belongs_to :super_family, foreign_key: :super_family_code, primary_key: :code
end
