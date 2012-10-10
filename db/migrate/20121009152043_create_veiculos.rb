class CreateVeiculos < ActiveRecord::Migration
  def change
    create_table :veiculos do |t|
      t.string :placa
      t.string :hodometro
      t.string :combustivel
      t.string :peso

      t.timestamps
    end
  end
end
