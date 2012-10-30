class CreateOrdemservicos < ActiveRecord::Migration
  def change
    create_table :ordemservicos do |t|
      t.references :rotao
      t.references :cliente

      t.timestamps
    end
    add_index :ordemservicos, :rotao_id
    add_index :ordemservicos, :cliente_id
  end
end
