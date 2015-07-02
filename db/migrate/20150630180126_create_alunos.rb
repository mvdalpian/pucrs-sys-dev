class CreateAlunos < ActiveRecord::Migration
  def change
  	create_table :alunos do |t|
      t.string :nome
      t.integer :cadeiras
      t.references :informacao, index: true, foreign_key: true

      t.timestamps null: false
    end

    create_table :alunos_disciplinas do |t|
      t.belongs_to :disciplina, index: true, foreign_key: true
      t.belongs_to :aluno, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
