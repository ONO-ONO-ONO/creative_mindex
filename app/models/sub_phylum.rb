class SubPhylum < ApplicationRecord
  # 亜門(あもん)

  belongs_to :sub_phylum, foreign_key: :sub_phylum_code, primary_key: :code
end
