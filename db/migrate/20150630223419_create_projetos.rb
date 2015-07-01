class CreateProjetos < ActiveRecord::Migration
  def change
    create_table :projetos do |t|
      t.string :nomeProjeto
      t.string :resumo

      t.timestamps null: false
    end
  end
end
