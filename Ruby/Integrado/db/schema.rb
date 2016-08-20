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

ActiveRecord::Schema.define(version: 20160820124035) do

  create_table "agendamentos", force: true do |t|
    t.datetime "dataHora"
    t.integer  "idQuadra"
    t.string   "usuario_registroUsuario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cadastro_usuarios", force: true do |t|
    t.string   "nome"
    t.string   "registroUsuario"
    t.string   "emailUsuario"
    t.string   "senha"
    t.integer  "telefone"
    t.datetime "dataCadastro"
    t.string   "usuario_registroUsuario"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest",         limit: 50
  end

  create_table "usuarios", force: true do |t|
    t.string   "registroUsuario",               null: false
    t.string   "senha",                         null: false
    t.string   "nome",                          null: false
    t.integer  "tipoUsuario",       default: 0, null: false
    t.datetime "ultimoAgendamento",             null: false
    t.string   "situacaoMatricula",             null: false
    t.string   "fotoUsuario"
    t.string   "emailUsuario",                  null: false
    t.integer  "telefone"
    t.datetime "dataCadastro"
    t.datetime "dataUpdate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "usuarios", ["emailUsuario"], name: "emailUsuario_UNIQUE", unique: true, using: :btree

end
