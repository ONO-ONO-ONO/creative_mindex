create_table :tests, force: :cascade, charset: "utf8mb4", collation: "utf8mb4_bin" do |t|
  t.string "name"
  t.integer "age"
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
end
