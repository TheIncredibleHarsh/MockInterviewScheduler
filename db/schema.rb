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

ActiveRecord::Schema[7.1].define(version: 2024_09_24_174000) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "interviewee_profiles", force: :cascade do |t|
    t.boolean "isVerified"
    t.boolean "isPaused"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interviewer_profiles", force: :cascade do |t|
    t.integer "slot_length"
    t.boolean "isPaused"
    t.boolean "isVerified"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.string "phone"
    t.string "organization"
    t.integer "yoe"
    t.bigint "interviewer_profile_id", null: false
    t.bigint "interviewee_profile_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["interviewee_profile_id"], name: "index_users_on_interviewee_profile_id"
    t.index ["interviewer_profile_id"], name: "index_users_on_interviewer_profile_id"
  end

  add_foreign_key "users", "interviewee_profiles"
  add_foreign_key "users", "interviewer_profiles"
end
