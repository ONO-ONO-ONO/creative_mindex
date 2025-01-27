class SubGenuses < ApplicationRecord
  # 亜属(あぞく)

  belongs_to :animal, foreign_key: :sub_genus_code, primary_key: :code, optional: true
end
