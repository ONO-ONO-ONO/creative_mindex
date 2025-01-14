# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 0) do
  create_table "animals", force: :cascade do |t|
    t.string "name", null: false
    t.string "scientific_name"
    t.string "wa_name"
    t.string "kanji_name"
    t.float "long"
    t.float "tall"
    t.float "weight"
    t.integer "domain_code"
    t.integer "kingdom_code"
    t.integer "phylum_code"
    t.integer "sub_phylum_code"
    t.integer "super_class_code"
    t.integer "class_code"
    t.integer "sub_class_code"
    t.integer "infra_class_code"
    t.integer "order_code"
    t.integer "sub_order_code"
    t.integer "super_family_code"
    t.integer "family_code"
    t.integer "sub_family_code"
    t.integer "genus_code"
    t.integer "sub_genus_code"
    t.integer "species_code"
    t.integer "sub_species_code"
    t.integer "red_list_code"
    t.text "note"
  end

  create_table "classes", force: :cascade do |t|
    t.string "name", null: false
    t.string "eng_name"
    t.integer "code", null: false
    t.integer "parent_code"
    t.boolean "major_flg", default: true, null: false
    t.integer "sort"
  end

  create_table "domains", force: :cascade do |t|
    t.string "name", null: false
    t.string "eng_name"
    t.integer "code", null: false
    t.boolean "major_flg", default: true, null: false
    t.integer "sort"
  end

  create_table "families", force: :cascade do |t|
    t.string "name", null: false
    t.string "eng_name"
    t.integer "code", null: false
    t.integer "parent_code"
    t.boolean "major_flg", default: true, null: false
    t.integer "sort"
  end

  create_table "genuses", force: :cascade do |t|
    t.string "name", null: false
    t.string "eng_name"
    t.integer "code", null: false
    t.integer "parent_code"
    t.boolean "major_flg", default: true, null: false
    t.integer "sort"
  end

  create_table "infra_classes", force: :cascade do |t|
    t.string "name", null: false
    t.string "eng_name"
    t.integer "code", null: false
    t.integer "parent_code"
    t.boolean "major_flg", default: true, null: false
    t.integer "sort"
  end

  create_table "infra_orders", force: :cascade do |t|
    t.string "name", null: false
    t.string "eng_name"
    t.integer "code", null: false
    t.integer "parent_code"
    t.boolean "major_flg", default: true, null: false
    t.integer "sort"
  end

  create_table "kingdoms", force: :cascade do |t|
    t.string "name", null: false
    t.string "eng_name"
    t.integer "code", null: false
    t.integer "parent_code"
    t.boolean "major_flg", default: true, null: false
    t.integer "sort"
  end

  create_table "orders", force: :cascade do |t|
    t.string "name", null: false
    t.string "eng_name"
    t.integer "code", null: false
    t.integer "parent_code"
    t.boolean "major_flg", default: true, null: false
    t.integer "sort"
  end

  create_table "phylums", force: :cascade do |t|
    t.string "name", null: false
    t.string "eng_name"
    t.integer "code", null: false
    t.integer "parent_code"
    t.boolean "major_flg", default: true, null: false
    t.integer "sort"
  end

  create_table "red_lists", force: :cascade do |t|
    t.string "name", null: false
    t.string "eng_name"
    t.integer "code", null: false
    t.integer "parent_code"
    t.boolean "major_flg", default: true, null: false
    t.integer "sort"
  end

  create_table "species", force: :cascade do |t|
    t.string "name", null: false
    t.string "eng_name"
    t.integer "code", null: false
    t.integer "parent_code"
    t.boolean "major_flg", default: true, null: false
    t.integer "sort"
  end

  create_table "sub_classes", force: :cascade do |t|
    t.string "name", null: false
    t.string "eng_name"
    t.integer "code", null: false
    t.integer "parent_code"
    t.boolean "major_flg", default: true, null: false
    t.integer "sort"
  end

  create_table "sub_families", force: :cascade do |t|
    t.string "name", null: false
    t.string "eng_name"
    t.integer "code", null: false
    t.integer "parent_code"
    t.boolean "major_flg", default: true, null: false
    t.integer "sort"
  end

  create_table "sub_genuses", force: :cascade do |t|
    t.string "name", null: false
    t.string "eng_name"
    t.integer "code", null: false
    t.integer "parent_code"
    t.boolean "major_flg", default: true, null: false
    t.integer "sort"
  end

  create_table "sub_orders", force: :cascade do |t|
    t.string "name", null: false
    t.string "eng_name"
    t.integer "code", null: false
    t.integer "parent_code"
    t.boolean "major_flg", default: true, null: false
    t.integer "sort"
  end

  create_table "sub_phylums", force: :cascade do |t|
    t.string "name", null: false
    t.string "eng_name"
    t.integer "code", null: false
    t.integer "parent_code"
    t.boolean "major_flg", default: true, null: false
    t.integer "sort"
  end

  create_table "sub_species", force: :cascade do |t|
    t.string "name", null: false
    t.string "eng_name"
    t.integer "code", null: false
    t.integer "parent_code"
    t.boolean "major_flg", default: true, null: false
    t.integer "sort"
  end

  create_table "super_classes", force: :cascade do |t|
    t.string "name", null: false
    t.string "eng_name"
    t.integer "code", null: false
    t.integer "parent_code"
    t.boolean "major_flg", default: true, null: false
    t.integer "sort"
  end

  create_table "super_families", force: :cascade do |t|
    t.string "name", null: false
    t.string "eng_name"
    t.integer "code", null: false
    t.integer "parent_code"
    t.boolean "major_flg", default: true, null: false
    t.integer "sort"
  end

  create_table "super_orders", force: :cascade do |t|
    t.string "name", null: false
    t.string "eng_name"
    t.integer "code", null: false
    t.integer "parent_code"
    t.boolean "major_flg", default: true, null: false
    t.integer "sort"
  end

  create_table "tests", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.integer "age", default: 20, null: false
    t.index ["name"], name: "index_users_on_name"
  end
end
