class SubOrder < ApplicationRecord
  # 亜目(あもく)

  belongs_to :animal, foreign_key: :sub_order_code, primary_key: :code
end
