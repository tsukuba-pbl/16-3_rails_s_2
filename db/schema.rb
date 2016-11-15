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

ActiveRecord::Schema.define(version: 20161115013122) do

  create_table "furniture_items", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "layouts", force: :cascade do |t|
    t.string   "nanika"
    t.string   "hoge"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "microposts", force: :cascade do |t|
    t.text     "content"
    t.integer  "uzser_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "microposts", ["uzser_id"], name: "index_microposts_on_uzser_id"

  create_table "placed_furniture_items", force: :cascade do |t|
    t.integer  "layout_id"
    t.integer  "furniture_item_id"
    t.float    "x_coordinate_data"
    t.float    "y_coordinate_data"
    t.float    "z_coordinate_data"
    t.float    "a_rotation"
    t.float    "b_rotation"
    t.float    "c_rotation"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "placed_furniture_items", ["furniture_item_id"], name: "index_placed_furniture_items_on_furniture_item_id"
  add_index "placed_furniture_items", ["layout_id"], name: "index_placed_furniture_items_on_layout_id"

  create_table "posts", force: :cascade do |t|
    t.string   "name"
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image"
  end

  create_table "uxsers", force: :cascade do |t|
    t.string   "name"
    t.string   "avatar"
    t.boolean  "remove_avatar"
    t.string   "avatar_cache"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.float    "zahyo_x"
    t.float    "zahyo_y"
    t.float    "zahyo_z"
    t.float    "offset"
  end

  create_table "uzsers", force: :cascade do |t|
    t.string   "name"
    t.string   "name2"
    t.boolean  "name3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
