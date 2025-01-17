class SubClasses < ApplicationRecord
  # 亜綱(あこう)

  belongs_to :sub_classes, foreign_key: :sub_class_code, primary_key: :code
end
