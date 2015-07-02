class Disciplina < ActiveRecord::Base
	validates :nome, presence: { message: "obrigatório!" }
	validates :cod_cred, presence: { message: "Código Crédito obrigatório!" }
	validates :informacao, presence: { message: "obrigatório!" }
	validates :semestre, presence: { message: "obrigatório!" },
	                     numericality: { only_integer: true, message: "não é um número!" }
	validates :vagas, presence: { message: "obrigatório!" },
	                  numericality: { only_integer: true, message: "não é um número!" }

	belongs_to :informacao
	has_many :pos_requisitos, class_name: "Disciplina"
	belongs_to :pre_requisito, class_name: "Disciplina", foreign_key: "disciplina_id"

	has_and_belongs_to_many :alunos, class_name: "Aluno"

	def nome_cod_cred
		"#{self.nome} - #{self.cod_cred}"
	end
end
