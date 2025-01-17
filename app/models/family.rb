class Family < ApplicationRecord
  # 科(か)

  belongs_to :family, foreign_key: :family_code, primary_key: :code
end
