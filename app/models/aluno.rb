class Aluno < ActiveRecord::Base
	validates :nome, presence: { message: "obrigatório!" }
	validates :cadeiras, presence: { message: "obrigatório!" }, numericality: { only_integer: true, message: "não é um número!" }
	validates :informacao, presence: { message: "obrigatório!" }

	belongs_to :informacao
end