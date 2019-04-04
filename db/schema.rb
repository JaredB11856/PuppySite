# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_04_04_130331) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "litters", force: :cascade do |t|
    t.date "date"
    t.text "about"
    t.text "main_image"
    t.text "image_one"
    t.text "image_two"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "mother_id"
    t.index ["mother_id"], name: "index_litters_on_mother_id"
  end

  create_table "mothers", force: :cascade do |t|
    t.text "main_image"
    t.text "image_one"
    t.text "image_two"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "puppies", force: :cascade do |t|
    t.string "name"
    t.text "image_one"
    t.text "image_two"
    t.text "about"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "litter_id"
    t.text "main_image"
    t.index ["litter_id"], name: "index_puppies_on_litter_id"
  end

  add_foreign_key "litters", "mothers"
  add_foreign_key "puppies", "litters"
end
