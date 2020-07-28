# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_28_143042) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "caregivers", force: :cascade do |t|
    t.string "caregiver_name"
    t.string "employee_number"
    t.string "company_name"
    t.string "caregiver_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "category_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "memories", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "date"
    t.string "image_url"
    t.bigint "category_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["category_id"], name: "index_memories_on_category_id"
    t.index ["user_id"], name: "index_memories_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "user_email"
    t.string "password_digest"
    t.string "family_member_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "visits", force: :cascade do |t|
    t.text "visit_description"
    t.datetime "visit_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.bigint "caregiver_id", null: false
    t.index ["caregiver_id"], name: "index_visits_on_caregiver_id"
    t.index ["user_id"], name: "index_visits_on_user_id"
  end

  add_foreign_key "memories", "categories"
  add_foreign_key "memories", "users"
  add_foreign_key "visits", "caregivers"
  add_foreign_key "visits", "users"
end
