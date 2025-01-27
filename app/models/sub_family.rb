class SubFamily < ApplicationRecord
  # 亜科(あか)

  belongs_to :animal, foreign_key: :sub_family_code, primary_key: :code, optional: true
end
