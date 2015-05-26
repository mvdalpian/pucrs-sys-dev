class CreateDisciplinasDisciplinas < ActiveRecord::Migration
  def change
    create_table :disciplinas_disciplinas do |t|
    	t.belongs_to :pre_requisito, index: true, null: false
      	t.belongs_to :pos_requisito, index: true, null: false
    end
  end
end
