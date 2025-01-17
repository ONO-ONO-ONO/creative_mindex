class RedList < ApplicationRecord
  # レッドリスト

  belongs_to :red_list, foreign_key: :red_list_code, primary_key: :code
end
