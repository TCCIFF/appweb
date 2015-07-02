class CreateGlossarios < ActiveRecord::Migration
  def change
    create_table :glossarios do |t|
      t.string :siglaGlossario
      t.string :descricaoGlossario

      t.timestamps null: false
    end
  end
end
