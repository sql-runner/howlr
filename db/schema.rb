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

ActiveRecord::Schema.define(version: 20141028125923) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "follow_relationships", force: true do |t|
    t.integer  "followed_user_id"
    t.integer  "follower_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "follow_relationships", ["followed_user_id"], name: "index_follow_relationships_on_followed_user_id", using: :btree
  add_index "follow_relationships", ["follower_id"], name: "index_follow_relationships_on_follower_id", using: :btree

  create_table "howls", force: true do |t|
    t.integer  "user_id",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "content_type"
    t.integer  "content_id"
  end

  add_index "howls", ["user_id"], name: "index_howls_on_user_id", using: :btree

  create_table "image_howls", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "likes", force: true do |t|
    t.integer  "user_id"
    t.integer  "howl_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "likes", ["howl_id"], name: "index_likes_on_howl_id", using: :btree
  add_index "likes", ["user_id"], name: "index_likes_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  create_table "word_howls", force: true do |t|
    t.string   "body"
    t.integer  "howl_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "word_howls", ["howl_id"], name: "index_word_howls_on_howl_id", using: :btree

end
