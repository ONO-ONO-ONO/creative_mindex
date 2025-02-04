module RansackAll
  extend ActiveSupport::Concern

  included do
    # 検索可能な属性を許可
    def self.ransackable_attributes(auth_object = nil)
      column_names
    end

    # 検索可能な関連オブジェクトを指定
    def self.ransackable_associations(auth_object = nil)
      reflect_on_all_associations.map(&:name).map(&:to_s)
    end
  end
end
