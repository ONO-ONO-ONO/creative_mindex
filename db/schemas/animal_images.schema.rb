create_table :animal_images, force: :cascade, charset: "utf8mb4", collation: "utf8mb4_bin" do |t|
  t.integer :animal_id, null: false # 動物ID
  t.string :img_url, null: false # 画像URL
  t.integer :sort # ソート
  t.boolean :main_flg, null: false, default: false # メイン画像フラグ
  t.boolean :icon_flg, null: false, default: false # 一覧画像フラグ
end
