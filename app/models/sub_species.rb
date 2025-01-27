class SubSpecies < ApplicationRecord
  # 亜種(あしゅ)

  belongs_to :animal, foreign_key: :sub_species_code, primary_key: :code, optional: true
end
