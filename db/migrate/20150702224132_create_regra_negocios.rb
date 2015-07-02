class CreateRegraNegocios < ActiveRecord::Migration
  def change
    create_table :regra_negocios do |t|
      t.string :siglaRegra
      t.string :nomeRegra
      t.string :descricaoRegra

      t.timestamps null: false
    end
  end
end
