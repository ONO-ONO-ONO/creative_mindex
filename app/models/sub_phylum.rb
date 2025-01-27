class SubPhylum < ApplicationRecord
  # 亜門(あもん)

  belongs_to :animal, foreign_key: :sub_phylum_code, primary_key: :code, optional: true
end
