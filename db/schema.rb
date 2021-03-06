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

ActiveRecord::Schema.define(version: 2021_10_03_065408) do

  create_table "invitados", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "group"
    t.string "menu"
    t.integer "phone"
    t.string "email"
    t.boolean "isgoing"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "party_id"
    t.index ["party_id"], name: "index_invitados_on_party_id"
  end

  create_table "parties", force: :cascade do |t|
    t.string "name"
    t.boolean "invite_sent"
    t.integer "people_invited"
    t.integer "people_going"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "invitados", "parties"
end
