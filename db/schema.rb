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

ActiveRecord::Schema.define(version: 2020_07_24_205324) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "avatars", force: :cascade do |t|
    t.string "path", null: false
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_avatars_on_name", unique: true
  end

  create_table "fuels", force: :cascade do |t|
    t.string "fuel_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fuel_name"], name: "index_fuels_on_fuel_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "surname", default: "", null: false
    t.string "username", default: "", null: false
    t.datetime "dob", null: false
    t.string "role", default: "user", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.bigint "avatars_id", default: 1, null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["avatars_id"], name: "index_users_on_avatars_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  create_table "vehicle_classes", force: :cascade do |t|
    t.string "class_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["class_name"], name: "index_vehicle_classes_on_class_name", unique: true
  end

  create_table "vehicles", force: :cascade do |t|
    t.bigint "users_id", null: false
    t.bigint "vehicle_classes_id", null: false
    t.bigint "fuels_id", null: false
    t.string "name", null: false
    t.string "model", null: false
    t.datetime "purchase_date", null: false
    t.datetime "vehicle_dob", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fuels_id"], name: "index_vehicles_on_fuels_id"
    t.index ["users_id"], name: "index_vehicles_on_users_id"
    t.index ["vehicle_classes_id"], name: "index_vehicles_on_vehicle_classes_id"
  end

end
