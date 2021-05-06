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

ActiveRecord::Schema.define(version: 2021_05_06_145951) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "djokers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.index ["email"], name: "index_djokers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_djokers_on_reset_password_token", unique: true
  end

  create_table "djoques", force: :cascade do |t|
    t.text "djoke"
    t.date "date"
    t.integer "like"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "djoker_id", null: false
    t.index ["djoker_id"], name: "index_djoques_on_djoker_id"
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "djoque_id", null: false
    t.bigint "djoker_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["djoker_id"], name: "index_likes_on_djoker_id"
    t.index ["djoque_id"], name: "index_likes_on_djoque_id"
  end

  add_foreign_key "djoques", "djokers"
  add_foreign_key "likes", "djokers"
  add_foreign_key "likes", "djoques"
end
