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

ActiveRecord::Schema.define(version: 20161019151809) do

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "from_datetime"
    t.datetime "to_datetime"
    t.string   "ticket_url"
    t.integer  "ticker_price"
    t.string   "venue_title"
    t.decimal  "venue_lat"
    t.decimal  "venue_long"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "cover_image_file_name"
    t.string   "cover_image_content_type"
    t.integer  "cover_image_file_size"
    t.datetime "cover_image_updated_at"
  end

  create_table "news", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.string   "url"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "cover_image_file_name"
    t.string   "cover_image_content_type"
    t.integer  "cover_image_file_size"
    t.datetime "cover_image_updated_at"
  end

  create_table "speakers", force: :cascade do |t|
    t.string   "name"
    t.text     "bio"
    t.string   "profile_url"
    t.integer  "event_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "profile_pic_file_name"
    t.string   "profile_pic_content_type"
    t.integer  "profile_pic_file_size"
    t.datetime "profile_pic_updated_at"
  end

end
