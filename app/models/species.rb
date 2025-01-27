class Species < ApplicationRecord
  # 種(しゅ)

  belongs_to :animal, foreign_key: :species_code, primary_key: :code, optional: true
end
