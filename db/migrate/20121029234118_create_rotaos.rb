class CreateRotaos < ActiveRecord::Migration
  def change
    create_table :rotaos do |t|
      t.string :trajeto
      t.references :motoristao
      t.references :veiculo

      t.timestamps
    end
    add_index :rotaos, :motoristao_id
    add_index :rotaos, :veiculo_id
  end
end
