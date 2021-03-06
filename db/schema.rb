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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121030114735) do

  create_table "clientes", :force => true do |t|
    t.string   "nome"
    t.string   "tipo"
    t.string   "cnpj"
    t.string   "dados"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "motoristaos", :force => true do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "endereco"
    t.string   "telefone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ordemservicos", :force => true do |t|
    t.integer  "rotao_id"
    t.integer  "cliente_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "ordemservicos", ["cliente_id"], :name => "index_ordemservicos_on_cliente_id"
  add_index "ordemservicos", ["rotao_id"], :name => "index_ordemservicos_on_rotao_id"

  create_table "rotaos", :force => true do |t|
    t.string   "trajeto"
    t.integer  "motoristao_id"
    t.integer  "veiculo_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "rotaos", ["motoristao_id"], :name => "index_rotaos_on_motoristao_id"
  add_index "rotaos", ["veiculo_id"], :name => "index_rotaos_on_veiculo_id"

  create_table "veiculos", :force => true do |t|
    t.string   "placa"
    t.string   "hodometro"
    t.string   "combustivel"
    t.string   "peso"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
