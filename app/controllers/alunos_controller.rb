class AlunosController < ApplicationController
	def index
		@alunos = Aluno.all
	end

	def show
		@aluno = Aluno.find(params[:id])
	end

	def new
		@aluno = Aluno.new
	end

	def edit
		@aluno = Aluno.find(params[:id])
	end

	def create
		@aluno = Aluno.new(alunos_params)
		@aluno.informacao = Informacao.find(params[:aluno][:informacao])

		if @aluno.save
			redirect_to action: :index
		else
			render 'new'
		end
	end

	def update
		@aluno = Aluno.find(params[:id])
     
        if @aluno.update(alunos_params)
            redirect_to action: :index
        else
            render 'edit'
        end
	end

	def destroy
        @aluno = Aluno.find(params[:id])

        # if @disciplina.pos_requisitos.empty?
            @aluno.destroy
        # end
        redirect_to action: :index
    end

	private
		def alunos_params
            params.require(:aluno).permit(:nome, :cadeiras)
        end
end