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

ActiveRecord::Schema.define(version: 20181017053254) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lectures", force: :cascade do |t|
    t.string "class_name"
    t.string "class_id"
    t.string "evaluation"
    t.string "grade"
    t.string "module"
    t.string "department"
    t.string "room"
    t.string "period"
    t.string "attendance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "professer"
    t.string "class_kind"
    t.integer "form"
    t.float "unit"
    t.text "contents"
    t.text "remarks"
    t.text "e_name"
    t.float "satisfaction_ave"
    t.float "easy_ave"
  end

  create_table "user_voices", force: :cascade do |t|
    t.text "comment"
    t.integer "satisfaction"
    t.bigint "lecture_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lecture_id"], name: "index_user_voices_on_lecture_id"
  end

  add_foreign_key "user_voices", "lectures"
end
