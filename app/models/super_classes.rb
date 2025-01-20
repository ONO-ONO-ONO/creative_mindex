class SuperClasses < ApplicationRecord
  # 上綱(じょうこう)

  belongs_to :animal, foreign_key: :super_class_code, primary_key: :code
end
