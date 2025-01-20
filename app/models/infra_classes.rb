class InfraClasses < ApplicationRecord
  # 下綱(かこう)

  belongs_to :animal, foreign_key: :infra_class_code, primary_key: :code
end
