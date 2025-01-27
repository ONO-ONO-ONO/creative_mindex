class Order < ApplicationRecord
  # 目(もく)

  belongs_to :animal, foreign_key: :order_code, primary_key: :code, optional: true
end
