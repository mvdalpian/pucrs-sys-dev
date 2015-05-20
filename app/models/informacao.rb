class Informacao < ActiveRecord::Base
	validates :curso, presence: { message: "obrigatório" },
					  length: { minimum: 5, message: "Valor deve possuir mais de 4 caracteres!" }
	has_and_belongs_to_many :disciplina
end
