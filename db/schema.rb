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

ActiveRecord::Schema.define(version: 20150702180750) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alunos", force: :cascade do |t|
    t.string   "nome"
    t.integer  "cadeiras"
    t.integer  "informacao_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "semestre"
  end

  add_index "alunos", ["informacao_id"], name: "index_alunos_on_informacao_id", using: :btree

  create_table "alunos_disciplinas", force: :cascade do |t|
    t.integer  "disciplina_id"
    t.integer  "aluno_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "alunos_disciplinas", ["aluno_id"], name: "index_alunos_disciplinas_on_aluno_id", using: :btree
  add_index "alunos_disciplinas", ["disciplina_id"], name: "index_alunos_disciplinas_on_disciplina_id", using: :btree

  create_table "disciplinas", force: :cascade do |t|
    t.string   "nome"
    t.string   "cod_cred"
    t.integer  "informacao_id"
    t.integer  "disciplina_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "semestre"
    t.integer  "vagas"
  end

  add_index "disciplinas", ["disciplina_id"], name: "index_disciplinas_on_disciplina_id", using: :btree
  add_index "disciplinas", ["informacao_id"], name: "index_disciplinas_on_informacao_id", using: :btree

  create_table "informacaos", force: :cascade do |t|
    t.string   "curso"
    t.text     "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "alunos", "informacaos"
  add_foreign_key "alunos_disciplinas", "alunos"
  add_foreign_key "alunos_disciplinas", "disciplinas"
  add_foreign_key "disciplinas", "disciplinas"
  add_foreign_key "disciplinas", "informacaos"
end
