class SubSpecies < ApplicationRecord
  # 亜種(あしゅ)

  belongs_to :sub_species, foreign_key: :sub_species_code, primary_key: :code
end
