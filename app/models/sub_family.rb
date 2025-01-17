class SubFamily < ApplicationRecord
  # 亜科(あか)

  belongs_to :sub_family, foreign_key: :sub_family_code, primary_key: :code
end
