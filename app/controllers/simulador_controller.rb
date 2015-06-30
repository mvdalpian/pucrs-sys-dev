class SimuladorController < ApplicationController
	def index
	end

	def simular
		@disciplinas = Disciplina.where(informacao: params[:informacao][:informacao_id])
		@alunos = Aluno.where(informacao: params[:informacao][:informacao_id])

		# raise @alunos.count.inspect
		@disciplinas.each do |disciplina|
			raise disciplina.inspect
		end
	end
end
