class SuperClasses < ApplicationRecord
  # 上綱(じょうこう)

  belongs_to :super_classes, foreign_key: :super_class_code, primary_key: :code
end
