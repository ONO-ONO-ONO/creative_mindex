class Family < ApplicationRecord
  # 科(か)

  belongs_to :animal, foreign_key: :family_code, primary_key: :code, optional: true
end
