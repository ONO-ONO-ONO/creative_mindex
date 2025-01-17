class SuperPhylum < ApplicationRecord
  # 上門(じょうもん)

  belongs_to :animal, foreign_key: :super_phylum_code, primary_key: :code
end
