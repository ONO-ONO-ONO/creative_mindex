class Genuses < ApplicationRecord
  # 属(ぞく)

  belongs_to :genuses, foreign_key: :genus_code, primary_key: :code
end
