class CreateDiagramas < ActiveRecord::Migration
  def change
    create_table :diagramas do |t|
      t.string :nomeDiagrama
      t.string :tipoDiagrama
      t.string :arquivo

      t.timestamps null: false
    end
  end
end
