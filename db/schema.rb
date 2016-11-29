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

ActiveRecord::Schema.define(version: 20161124181540) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.integer  "wod_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "centers", force: :cascade do |t|
    t.integer  "category_id"
    t.integer  "user_id"
    t.string   "name"
    t.float    "lat"
    t.float    "lon"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "certifications", force: :cascade do |t|
    t.integer  "coach_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coaches", force: :cascade do |t|
    t.integer  "center_id"
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "name"
    t.string   "duty"
    t.string   "avatar_coach_img_file_name"
    t.string   "avatar_coach_img_content_type"
    t.integer  "avatar_coach_img_file_size"
    t.datetime "avatar_coach_img_updated_at"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider",                                  null: false
    t.string   "uid",                          default: "", null: false
    t.string   "encrypted_password",           default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "name"
    t.string   "nickname"
    t.string   "image"
    t.string   "email"
    t.text     "tokens"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "lat"
    t.float    "lon"
    t.json     "reminder"
    t.date     "expire_date"
    t.string   "credit_number"
    t.string   "avatar_user_img_file_name"
    t.string   "avatar_user_img_content_type"
    t.integer  "avatar_user_img_file_size"
    t.datetime "avatar_user_img_updated_at"
    t.string   "address"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true, using: :btree

  create_table "wods", force: :cascade do |t|
    t.integer  "center_id"
    t.string   "name"
    t.date     "wod_datetime"
    t.string   "wod_time"
    t.string   "location"
    t.integer  "capacity"
    t.text     "description"
    t.string   "avatar_wod_img_file_name"
    t.string   "avatar_wod_img_content_type"
    t.integer  "avatar_wod_img_file_size"
    t.datetime "avatar_wod_img_updated_at"
    t.float    "lat"
    t.float    "lon"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end
