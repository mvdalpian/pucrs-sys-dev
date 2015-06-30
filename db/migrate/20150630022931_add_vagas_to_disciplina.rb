class AddVagasToDisciplina < ActiveRecord::Migration
  def change
    add_column :disciplinas, :vagas, :integer
  end
end
