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

ActiveRecord::Schema.define(version: 20141228213449) do

  create_table "artists", force: true do |t|
    t.string   "title"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mix_songs", force: true do |t|
    t.integer  "mix_id"
    t.integer  "song_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mix_songs", ["mix_id"], name: "index_mix_songs_on_mix_id"
  add_index "mix_songs", ["song_id"], name: "index_mix_songs_on_song_id"

  create_table "mixers", force: true do |t|
    t.string   "username",         null: false
    t.string   "email",            null: false
    t.string   "crypted_password", null: false
    t.string   "salt",             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mixers", ["email"], name: "index_mixers_on_email", unique: true

  create_table "mixes", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "mixer_id"
    t.string   "recipient"
  end

  create_table "songs", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "artist_id",  limit: 255
    t.string   "title"
  end

end
