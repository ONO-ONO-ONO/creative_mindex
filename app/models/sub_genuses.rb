class SubGenuses < ApplicationRecord
  # 亜属(あぞく)

  belongs_to :sub_genus, foreign_key: :sub_genus_code, primary_key: :code
end
