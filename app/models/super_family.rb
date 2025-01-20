class SuperFamily < ApplicationRecord
  # 上科(じょうか)

  belongs_to :animal, foreign_key: :super_family_code, primary_key: :code
end
