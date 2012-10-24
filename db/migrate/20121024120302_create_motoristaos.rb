class CreateMotoristaos < ActiveRecord::Migration
  def change
    create_table :motoristaos do |t|
      t.string :nome
      t.string :cpf
      t.string :endereco
      t.string :telefone

      t.timestamps
    end
  end
end
