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

ActiveRecord::Schema.define(version: 20140206214942) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artigos", force: true do |t|
    t.string   "titulo"
    t.text     "conteudo"
    t.boolean  "aprovado"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "autor_id"
  end

  add_index "artigos", ["autor_id"], name: "index_artigos_on_autor_id", using: :btree

  create_table "pokemons", force: true do |t|
    t.integer  "id_nacional"
    t.string   "nome"
    t.integer  "ataque"
    t.integer  "defesa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: true do |t|
    t.string   "nome"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
