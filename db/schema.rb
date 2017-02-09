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

ActiveRecord::Schema.define(version: 20170208233134) do

  create_table "articles", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "text",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "bancos", primary_key: "idBancos", force: :cascade do |t|
    t.string "Nombre",    limit: 255
    t.text   "Direccion", limit: 65535
    t.string "idGoogle",  limit: 255
    t.string "Posicion",  limit: 255
  end

  create_table "horarios", primary_key: "idHorarios", force: :cascade do |t|
    t.string  "Horario",         limit: 255
    t.integer "Bancos_idBancos", limit: 4,   null: false
  end

  add_index "horarios", ["Bancos_idBancos"], name: "fk_Horarios_Bancos1_idx", using: :btree

  create_table "solicitudes", primary_key: "idSolicitudes", force: :cascade do |t|
    t.string  "NombrePaciente",  limit: 255
    t.date    "FechaLimite"
    t.string  "Contacto",        limit: 255
    t.integer "Cantidad",        limit: 4
    t.string  "TipoSangre",      limit: 255
    t.integer "Bancos_idBancos", limit: 4,   null: false
  end

  add_index "solicitudes", ["Bancos_idBancos"], name: "fk_Solicitudes_Bancos_idx", using: :btree

  add_foreign_key "horarios", "bancos", column: "Bancos_idBancos", primary_key: "idBancos", name: "fk_Horarios_Bancos1"
  add_foreign_key "solicitudes", "bancos", column: "Bancos_idBancos", primary_key: "idBancos", name: "fk_Solicitudes_Bancos"
end
