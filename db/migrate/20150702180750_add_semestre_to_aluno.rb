class AddSemestreToAluno < ActiveRecord::Migration
  def change
    add_column :alunos, :semestre, :integer
  end
end
