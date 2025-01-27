class Genuses < ApplicationRecord
  # 属(ぞく)

  belongs_to :animal, foreign_key: :genus_code, primary_key: :code, optional: true
end
