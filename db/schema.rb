# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140921043616) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "card_set_cards", force: true do |t|
    t.integer  "user_id",     null: false
    t.integer  "card_set_id", null: false
    t.integer  "card_id",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "card_sets", force: true do |t|
    t.integer  "user_id",      null: false
    t.string   "title",        null: false
    t.time     "last_used_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cards", force: true do |t|
    t.integer  "user_id",    null: false
    t.integer  "person_id",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "showings", force: true do |t|
    t.integer  "user_id",           null: false
    t.integer  "card_set_id",       null: false
    t.integer  "card_id",           null: false
    t.datetime "shown_at"
    t.datetime "answered_at"
    t.integer  "seconds_to_answer"
    t.boolean  "correct"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "email"
    t.string   "yammer_guid"
    t.string   "oauth_token"
    t.string   "yammer_title"
    t.string   "yammer_department"
    t.string   "photo_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "card_set_cards", "card_sets", name: "card_set_cards_card_set_id_fk"
  add_foreign_key "card_set_cards", "cards", name: "card_set_cards_card_id_fk"
  add_foreign_key "card_set_cards", "users", name: "card_set_cards_user_id_fk"

  add_foreign_key "card_sets", "users", name: "card_sets_user_id_fk"

  add_foreign_key "cards", "users", name: "cards_user_id_fk"

  add_foreign_key "showings", "card_sets", name: "showings_card_set_id_fk"
  add_foreign_key "showings", "cards", name: "showings_card_id_fk"
  add_foreign_key "showings", "users", name: "showings_user_id_fk"

end
