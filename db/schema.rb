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

ActiveRecord::Schema.define(version: 20170226001450) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "plant_group_updates", force: :cascade do |t|
    t.integer  "plant_group_id"
    t.string   "update_type"
    t.integer  "quantity"
    t.integer  "transplant_origin_room_id"
    t.integer  "transplant_destination_room_id"
    t.integer  "current_room_id"
    t.string   "notes"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["plant_group_id"], name: "index_plant_group_updates_on_plant_group_id", using: :btree
  end

  create_table "plant_groups", force: :cascade do |t|
    t.string   "nickname"
    t.integer  "quantity"
    t.date     "clone_date"
    t.string   "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "name"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
