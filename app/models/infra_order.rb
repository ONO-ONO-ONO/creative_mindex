class InfraOrder < ApplicationRecord
  # 下目(かもく)

  belongs_to :animal, foreign_key: :infra_order_code, primary_key: :code
end
