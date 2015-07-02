class CreateRequisitos < ActiveRecord::Migration
  def change
    create_table :requisitos do |t|
      t.string :siglaRequisito
      t.string :nomeRequisito
      t.string :descricaoRequisito
      t.string :tipoRequisito
      t.string :prioridade

      t.timestamps null: false
    end
  end
end
