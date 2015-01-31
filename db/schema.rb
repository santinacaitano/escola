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

ActiveRecord::Schema.define(version: 20150131011938) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alunos", force: true do |t|
    t.string   "nome"
    t.string   "matricula"
    t.string   "turma"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientes", force: true do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "email"
    t.string   "telefone"
    t.string   "endereço"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materias", force: true do |t|
    t.string   "descricao"
    t.string   "professor"
    t.string   "curso"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "turmas", force: true do |t|
    t.string   "turno"
    t.string   "sala"
    t.string   "materia"
    t.string   "professor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
