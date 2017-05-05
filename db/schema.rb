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

ActiveRecord::Schema.define(version: 20170422222517) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bps_aportes", force: :cascade do |t|
    t.integer  "sueldo"
    t.integer  "jubilacion"
    t.integer  "fonasa"
    t.integer  "bps_user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["bps_user_id"], name: "index_bps_aportes_on_bps_user_id", using: :btree
  end

  create_table "bps_users", force: :cascade do |t|
    t.integer  "numero_documento"
    t.string   "tipo_documento"
    t.string   "nombre"
    t.string   "apellido"
    t.string   "sexo"
    t.string   "email"
    t.string   "nacionalidad"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["numero_documento"], name: "index_bps_users_on_numero_documento", unique: true, using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.integer  "numero_documento"
    t.string   "tipo_documento"
    t.string   "nombre"
    t.string   "apellido"
    t.string   "nombre_completo"
    t.string   "sexo"
    t.string   "email"
    t.string   "nacionalidad"
    t.string   "tel"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["apellido"], name: "index_users_on_apellido", using: :btree
    t.index ["numero_documento"], name: "index_users_on_numero_documento", unique: true, using: :btree
  end

end
