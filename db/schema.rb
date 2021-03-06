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

ActiveRecord::Schema.define(version: 20140214195236) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "message_recipient", force: true do |t|
    t.integer  "recipients_id"
    t.integer  "messages_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: true do |t|
    t.text     "text_message"
    t.text     "video_link"
    t.text     "photo_link"
    t.datetime "send_date"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipients", force: true do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.text     "facebook_account"
    t.text     "twitter_account"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password"
    t.string   "password_confirmation"
    t.string   "first_name"
    t.string   "last_name"
    t.text     "facebook_account"
    t.text     "twitter_account"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
