class Species < ApplicationRecord
  # 種(しゅ)

  belongs_to :species, foreign_key: :species_code, primary_key: :code
end
