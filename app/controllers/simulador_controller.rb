class SimuladorController < ApplicationController
	def index
		@disciplinas = Disciplina.joins(:alunos).distinct
		# raise @disciplinas.inspect

		hashDisciplinas = []
		
		@disciplinas.each do |disciplina|
			if !hashDisciplinas.include? [ disciplina.informacao.curso, disciplina.semestre ]
				hashDisciplinas.push [ disciplina.informacao.curso, disciplina.semestre ]
			end
			# raise hashDisciplinas.inspect
		end
		# raise hashDisciplinas.inspect
		@disciplinas = hashDisciplinas
	end

	def simular
		@disciplinas = Disciplina.where(informacao: params[:informacao][:informacao_id], semestre: params[:semestre][:semestre])
		@disciplinas.each do |disciplina|
			disciplina.alunos.destroy_all
		end
		@alunos = Aluno.where(informacao: params[:informacao][:informacao_id], semestre: params[:semestre][:semestre])

		@disciplinas.each do |disciplina|
			@alunos.each do |aluno|
				if aluno.disciplinas.count < aluno.cadeiras
					if !disciplina.alunos.include?(aluno)
						disciplina.alunos << aluno
					end
				end
			end
			disciplina.save
		end

		# if @disciplinas.save
		# render 'show', :local => { :disciplinas => @disciplinas}
		redirect_to action: :show, :semestre => params[:semestre][:semestre]
		# else
			# redirect_to action: :index
		# end
	end

	def show
		@disciplinas = Disciplina.joins(:alunos).where(semestre: params[:semestre]).distinct
	end
end
