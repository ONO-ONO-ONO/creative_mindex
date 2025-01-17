class SubOrder < ApplicationRecord
  # 亜目(あもく)

  belongs_to :sub_order, foreign_key: :sub_order_code, primary_key: :code
end
