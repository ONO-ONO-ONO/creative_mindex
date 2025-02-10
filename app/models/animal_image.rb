class AnimalImage < ApplicationRecord
  # 動物画像

  belongs_to :animals, foreign_key: :id, primary_key: :animal_id

  # CSVヘッダー行
  def self.csv_header
    [
      self.name.constantize.human_attribute_name(:id),
      self.name.constantize.human_attribute_name(:animal_id),
      self.name.constantize.human_attribute_name(:img_url),
      self.name.constantize.human_attribute_name(:sort),
      self.name.constantize.human_attribute_name(:main_flg),
      self.name.constantize.human_attribute_name(:icon_flg)
    ]
  end

  # CSV出力データ
  def self.export_csv_data(records)
    export_csv_data = CSV.generate(headers: true, encoding: "UTF-8") do |csv|
      csv << self.name.constantize.csv_header # ヘッダー行
      records.each do |r|
        csv << [
          r.id,
          r.animal_id,
          r.img_url,
          r.sort,
          r.main_flg,
          r.icon_flg
        ]
      end
    end
    export_csv_data
  end
end
