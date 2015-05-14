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

ActiveRecord::Schema.define(version: 20150514084621) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agencies", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "country_id"
    t.string   "acronym"
    t.text     "full_name"
  end

  add_index "agencies", ["country_id"], name: "index_agencies_on_country_id", using: :btree

  create_table "compressions", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "mentor_id"
  end

  add_index "compressions", ["mentor_id"], name: "index_compressions_on_mentor_id", using: :btree

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.text     "descriprion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "mentor_id"
  end

  add_index "countries", ["mentor_id"], name: "index_countries_on_mentor_id", using: :btree

  create_table "developers", force: :cascade do |t|
    t.string   "name"
    t.text     "descriprion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "mentors", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "opticalschemes", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "orbits", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "mentor_id"
  end

  add_index "orbits", ["mentor_id"], name: "index_orbits_on_mentor_id", using: :btree

  create_table "owners", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "polygons", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "satellites", force: :cascade do |t|
    t.string   "acronym"
    t.string   "full_name"
    t.string   "nssdc_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "norad_id"
    t.integer  "orbit_id"
    t.integer  "compression_id"
  end

  add_index "satellites", ["compression_id"], name: "index_satellites_on_compression_id", using: :btree
  add_index "satellites", ["orbit_id"], name: "index_satellites_on_orbit_id", using: :btree

  create_table "stardetectors", force: :cascade do |t|
    t.string   "manufacturer"
    t.float    "accuracy"
    t.float    "frequency"
    t.float    "cost"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "testimonials", force: :cascade do |t|
    t.string   "user_name"
    t.text     "feedback"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "agencies", "countries"
  add_foreign_key "compressions", "mentors"
  add_foreign_key "countries", "mentors"
  add_foreign_key "orbits", "mentors"
  add_foreign_key "satellites", "compressions"
  add_foreign_key "satellites", "orbits"
end
