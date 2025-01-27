class SuperOrder < ApplicationRecord
  # 上目(じょうもく)

  belongs_to :animal, foreign_key: :super_order_code, primary_key: :code, optional: true
end
