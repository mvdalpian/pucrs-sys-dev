class CreateDisciplinas < ActiveRecord::Migration
  def change
    create_table :disciplinas do |t|
      t.string :nome
      t.string :cod_cred
      t.references :informacao, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
