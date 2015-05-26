class Disciplina < ActiveRecord::Base
	validates :nome, presence: { message: "Nome obrigatório!" }
	validates :cod_cred, presence: { message: "Código Crédito obrigatório!" }
	validates :informacao, presence: { message: "Curso obrigatório!" }

	belongs_to :informacao
	has_and_belongs_to_many :pre_requisitos, class_name: "Disciplina"
	has_and_belongs_to_many :pos_requisitos, class_name: "Disciplina"
end
