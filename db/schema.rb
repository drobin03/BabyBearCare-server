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

ActiveRecord::Schema.define(version: 20140805212437) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fluoride_scans", force: true do |t|
    t.integer  "location"
    t.string   "water_type"
    t.string   "bar_code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "infants", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.decimal  "weight"
    t.string   "gender"
    t.date     "date_of_birth"
    t.date     "due_date"
    t.decimal  "birth_weight"
    t.string   "multiple_birth"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "mineral_tests", force: true do |t|
    t.integer  "water_source_id"
    t.integer  "mineral_id"
    t.datetime "test_date"
    t.decimal  "measurement"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mineral_tests", ["mineral_id"], name: "index_mineral_tests_on_mineral_id", using: :btree
  add_index "mineral_tests", ["water_source_id"], name: "index_mineral_tests_on_water_source_id", using: :btree

  create_table "minerals", force: true do |t|
    t.string   "name"
    t.decimal  "max_dosage"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "treatment_chemicals", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "treatments", force: true do |t|
    t.integer  "water_source_id"
    t.integer  "treatment_chemical_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "treatments", ["treatment_chemical_id"], name: "index_treatments_on_treatment_chemical_id", using: :btree
  add_index "treatments", ["water_source_id"], name: "index_treatments_on_water_source_id", using: :btree

  create_table "user_roles", force: true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "login"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.string   "postal_code"
  end

  create_table "water_sources", force: true do |t|
    t.string   "watershed"
    t.string   "name"
    t.string   "city"
    t.string   "water_source_type"
    t.string   "standard_geographic_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
