class SubClasses < ApplicationRecord
  # 亜綱(あこう)

  belongs_to :animal, foreign_key: :sub_class_code, primary_key: :code, optional: true
end
