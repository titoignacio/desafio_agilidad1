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

ActiveRecord::Schema.define(version: 2019_09_25_175553) do

  create_table "interactions", force: :cascade do |t|
    t.integer "giver_id", null: false
    t.integer "receiver_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "like", default: false
    t.index ["giver_id"], name: "index_interactions_on_giver_id"
    t.index ["receiver_id"], name: "index_interactions_on_receiver_id"
  end

  create_table "private_messages", force: :cascade do |t|
    t.integer "sender_id", null: false
    t.integer "receiver_id", null: false
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["receiver_id"], name: "index_private_messages_on_receiver_id"
    t.index ["sender_id"], name: "index_private_messages_on_sender_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.text "bio"
    t.string "photo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "interactions", "users", column: "giver_id"
  add_foreign_key "interactions", "users", column: "receiver_id"
  add_foreign_key "private_messages", "receivers"
  add_foreign_key "private_messages", "senders"
end
