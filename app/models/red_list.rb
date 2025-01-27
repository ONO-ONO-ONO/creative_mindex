class RedList < ApplicationRecord
  # レッドリスト

  belongs_to :animal, foreign_key: :red_list_code, primary_key: :code, optional: true
end
