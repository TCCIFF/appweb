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

ActiveRecord::Schema.define(version: 20150705201000) do

  create_table "diagramas", force: :cascade do |t|
    t.string   "nomeDiagrama"
    t.string   "tipoDiagrama"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "fk_id_projeto"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  create_table "glossarios", force: :cascade do |t|
    t.string   "siglaGlossario"
    t.string   "descricaoGlossario"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "fk_id_projeto",      null: false
  end

  create_table "projetos", force: :cascade do |t|
    t.string   "nomeProjeto"
    t.string   "resumo"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "fk_id_usuario"
  end

  create_table "regra_negocios", force: :cascade do |t|
    t.string   "siglaRegra"
    t.string   "nomeRegra"
    t.string   "descricaoRegra"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "fk_id_projeto",  null: false
  end

  create_table "requisitos", force: :cascade do |t|
    t.string   "siglaRequisito"
    t.string   "nomeRequisito"
    t.string   "descricaoRequisito"
    t.string   "tipoRequisito"
    t.string   "prioridade"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "fk_id_projeto",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
