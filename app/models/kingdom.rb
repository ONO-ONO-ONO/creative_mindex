class Kingdom < ApplicationRecord
  # 界(かい)

  belongs_to :animal, foreign_key: :kingdom_code, primary_key: :code, optional: true
end
