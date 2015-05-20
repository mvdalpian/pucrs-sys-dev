class CreateInformacaos < ActiveRecord::Migration
  def change
    create_table :informacaos do |t|
      t.string :curso
      t.text :descricao

      t.timestamps null: false
    end
  end
end
