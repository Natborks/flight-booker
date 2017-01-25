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

ActiveRecord::Schema.define(version: 20170125210730) do

  create_table "airports", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flights", force: :cascade do |t|
    t.integer  "departing_id"
    t.integer  "arriving_id"
    t.datetime "flight_date"
    t.float    "flight_duration"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["arriving_id"], name: "index_flights_on_arriving_id"
    t.index ["departing_id"], name: "index_flights_on_departing_id"
  end

end