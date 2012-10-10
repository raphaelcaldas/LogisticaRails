class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :tipo
      t.string :cnpj
      t.string :dados

      t.timestamps
    end
  end
end
