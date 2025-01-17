class Order < ApplicationRecord
  # 目(もく)

  belongs_to :order, foreign_key: :order_code, primary_key: :code
end
