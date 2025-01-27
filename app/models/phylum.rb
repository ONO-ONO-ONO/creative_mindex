class Phylum < ApplicationRecord
  # 門(もん)

  belongs_to :animal, foreign_key: :phylum_code, primary_key: :code, optional: true
end
