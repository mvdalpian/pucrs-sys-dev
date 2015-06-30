class RemoveDisciplinaToDisciplinas < ActiveRecord::Migration
  def change
    remove_reference :disciplinas, :disciplina, index: true, foreign_key: true
  end
end
