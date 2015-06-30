class AddSemestreToDisciplina < ActiveRecord::Migration
  def change
    add_column :disciplinas, :semestre, :integer
  end
end
