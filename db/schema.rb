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

ActiveRecord::Schema.define(version: 20160209135831) do

  create_table "geschlechts", force: :cascade do |t|
    t.string   "titel",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "schuelers", force: :cascade do |t|
    t.string   "vorname",                            limit: 255
    t.string   "nachname",                           limit: 255
    t.integer  "geschlecht_id",                      limit: 4
    t.integer  "klassenstufe",                       limit: 4
    t.string   "klassenname",                        limit: 255
    t.integer  "schule_id",                          limit: 4
    t.integer  "verbleib_id",                        limit: 4
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.boolean  "wurde_beraten",                      limit: 1
    t.boolean  "freiwilliges_praktikum_abgeleistet", limit: 1
    t.integer  "schuljahr_id",                       limit: 4
  end

  add_index "schuelers", ["geschlecht_id"], name: "index_schuelers_on_geschlecht_id", using: :btree
  add_index "schuelers", ["schule_id"], name: "index_schuelers_on_schule_id", using: :btree
  add_index "schuelers", ["schuljahr_id"], name: "index_schuelers_on_schuljahr_id", using: :btree
  add_index "schuelers", ["verbleib_id"], name: "index_schuelers_on_verbleib_id", using: :btree

  create_table "schules", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "Kuerzel",    limit: 255
  end

  create_table "schuljahrs", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "kuerzel",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "first_name",           limit: 255
    t.string   "last_name",            limit: 255
    t.string   "salutation",           limit: 255
    t.integer  "class_level",          limit: 4
    t.string   "class_name",           limit: 255
    t.integer  "school_id",            limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.boolean  "counseled",            limit: 1
    t.boolean  "voluntary_internship", limit: 1
  end

  add_index "students", ["school_id"], name: "index_students_on_school_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.boolean  "admin",                  limit: 1
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "verbleibs", force: :cascade do |t|
    t.string   "titel",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "schuelers", "geschlechts"
  add_foreign_key "schuelers", "schules"
  add_foreign_key "schuelers", "schuljahrs"
  add_foreign_key "schuelers", "verbleibs"
  add_foreign_key "students", "schools"
end
