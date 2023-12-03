# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.


ActiveRecord::Schema[7.0].define(version: 2023_11_22_132335) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drivers", force: :cascade do |t|
    t.string "driver_name", null: false
    t.integer "phone_number", null: false
    t.string "email", null: false
    t.string "status", null: false
    t.string "language", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "journeys", force: :cascade do |t|
    t.string "origin", null: false
    t.string "destination", null: false
    t.date "Departure_Date", null: false
    t.time "Departure_time", null: false
    t.string "list_of_Sightseeing", default: [], null: false, array: true
    t.string "status", default: "Pending"
    t.bigint "user_id", null: false
    t.bigint "vehicle_id", null: false
    t.bigint "driver_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["driver_id"], name: "index_journeys_on_driver_id"
    t.index ["user_id"], name: "index_journeys_on_user_id"
    t.index ["vehicle_id"], name: "index_journeys_on_vehicle_id"
  end

  create_table "seats", force: :cascade do |t|
    t.string "seat_name", null: false
    t.string "seat_description", null: false
    t.string "image", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sightseeings", force: :cascade do |t|
    t.string "location", null: false
    t.string "description", null: false
    t.integer "price_per_hour", null: false
    t.integer "time_spent", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "email", null: false
    t.integer "phone_number", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "vehicle_name", null: false
    t.string "vehicle_model", null: false
    t.integer "person_capacity", null: false
    t.integer "price_per_day", null: false
    t.integer "luggage_capacity", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "weightcapacity", null: false
    t.string "sideview", null: false
    t.string "backview", null: false
    t.string "frontview", null: false
  end

end
