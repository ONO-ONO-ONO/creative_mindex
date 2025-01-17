class SuperOrder < ApplicationRecord
  # 上目(じょうもく)

  belongs_to :super_order, foreign_key: :super_order_code, primary_key: :code
end
