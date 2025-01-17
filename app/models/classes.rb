class Classes < ApplicationRecord
  # 綱(こう)

  belongs_to :classes, foreign_key: :class_code, primary_key: :code
end
