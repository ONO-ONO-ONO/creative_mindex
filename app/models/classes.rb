class Classes < ApplicationRecord
  # 綱(こう)

  belongs_to :animal, foreign_key: :class_code, primary_key: :code
end
