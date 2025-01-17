class Domain < ApplicationRecord
  # ドメイン

  belongs_to :animal, foreign_key: :domain_code, primary_key: :code
end
