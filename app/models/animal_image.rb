class AnimalImage < ApplicationRecord
  # 動物画像

  belongs_to :animals, foreign_key: :id, primary_key: :animal_id
end
