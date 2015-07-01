class Aluno < ActiveRecord::Base
	validates :nome, presence: { message: "obrigatório!" }
	validates :cadeiras, presence: { message: "obrigatório!" }, numericality: { only_integer: true, message: "não é um número!" }
	validates :informacao, presence: { message: "obrigatório!" }

	belongs_to :informacao
	has_and_belongs_to_many :disciplinas, class_name: "Disciplina"
end