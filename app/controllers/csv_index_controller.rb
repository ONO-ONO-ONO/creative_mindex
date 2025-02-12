class CsvIndexController < ApplicationController
  require "csv"
  require "zip"

  def index
    @import_select = [
      { name: "動物", code: "animal" },
      { name: "動物画像", code: "animal_image" }
    ]

    # アウトプット ボタンをクリックした場合
    if params[:output_flg]
      # クリックしたボタン毎の処理
      case params[:contents]
      when "animals"
        export_all_animals
      end
    end
  end

  # 動物系 全出力
  def export_all_animals
    temp_file = Tempfile.new("reports.zip")

    begin
      # 動物系のテーブル情報CSVをまとめたZIPを作成
      Zip::File.open(temp_file.path, Zip::File::CREATE) do |zip|
        # 複数のCSVを作成してZIPに追加
        bom = "\xEF\xBB\xBF" # UTF-8 BOM

        # Animal
        export_csv_animals = Animal.export_csv_data(Animal.all)
        zip.add("Animal.csv", write_tempfile(bom + export_csv_animals))

        # AnimalImage
        export_csv_animal_images = AnimalImage.export_csv_data(AnimalImage.all)
        zip.add("AnimalImage.csv", write_tempfile(bom + export_csv_animal_images))
      end

      # ZIPを送信
      send_data File.read(temp_file.path),
                filename: "動物マスタ-#{Time.zone.now.strftime('%Y%m%d%H%M')}.zip",
                type: "application/zip"
    ensure
      temp_file.close
      temp_file.unlink
    end
  end

  def import
    if params[:file].present?
      case params[:import_select]
      when "animal"
        Animal.import(params[:file])
      when "animal_image"
        AnimalImage.import(params[:file])
      end
      redirect_to csv_index_index_path, notice: "CSVのインポートが完了しました"
    else
      redirect_to csv_index_index_path, alert: "ファイルを選択してください"
    end
  end

  private

  # CSVを作成するヘルパーメソッド
  def generate_csv(records, headers)
    CSV.generate(headers: true) do |csv|
      csv << headers
      records.each do |record|
        csv << record.attributes.values_at(*headers.map(&:downcase))
      end
    end
  end

  # CSVデータを一時ファイルに書き込む
  def write_tempfile(data)
    file = Tempfile.new([ "temp", ".csv" ])
    file.write(data)
    file.rewind
    file.path # ZIPに追加するためパスを返す
  end
end
