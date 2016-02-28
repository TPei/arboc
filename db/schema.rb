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

ActiveRecord::Schema.define(version: 20160208195453) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "geschlechts", force: :cascade do |t|
    t.string   "titel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schuelers", force: :cascade do |t|
    t.string   "vorname"
    t.string   "nachname"
    t.integer  "geschlecht_id"
    t.integer  "klassenstufe"
    t.string   "klassenname"
    t.integer  "schule_id"
    t.integer  "verbleib_id"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.boolean  "wurde_beraten"
    t.boolean  "freiwilliges_praktikum_abgeleistet"
    t.integer  "schuljahr_id"
  end

  add_index "schuelers", ["geschlecht_id"], name: "index_schuelers_on_geschlecht_id", using: :btree
  add_index "schuelers", ["schule_id"], name: "index_schuelers_on_schule_id", using: :btree
  add_index "schuelers", ["schuljahr_id"], name: "index_schuelers_on_schuljahr_id", using: :btree
  add_index "schuelers", ["verbleib_id"], name: "index_schuelers_on_verbleib_id", using: :btree

  create_table "schules", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "Kuerzel"
  end

  create_table "schuljahrs", force: :cascade do |t|
    t.string   "name"
    t.string   "kuerzel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "verbleibs", force: :cascade do |t|
    t.string   "titel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "schuelers", "geschlechts"
  add_foreign_key "schuelers", "schules"
  add_foreign_key "schuelers", "schuljahrs"
  add_foreign_key "schuelers", "verbleibs"
end
