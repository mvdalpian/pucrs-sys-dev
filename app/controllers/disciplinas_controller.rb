class DisciplinasController < ApplicationController
	def index
        @disciplinas = Disciplina.all        
    end

    def show
        @disciplina = Disciplina.find(params[:id])
    end

    def new
        @disciplina = Disciplina.new
    end

    def edit
        @disciplina = Disciplina.find(params[:id])
    end

    def create
        # raise params.require(:disciplina).permit(:informacao)[:informacao].inspect
        # raise params[:disciplina][:informacao].inspect

        @disciplina = Disciplina.new(disciplina_params)
        @disciplina.informacao = Informacao.find(params[:disciplina][:informacao])

        if @disciplina.save
            redirect_to @disciplina
        else
            render 'new'
        end
    end

    def update
        @disciplina = Disciplina.find(params[:id])
     
        if @disciplina.update(disciplina_params)
            redirect_to @disciplina
        else
            render 'edit'
        end
    end

    private
        def disciplina_params
            params.require(:disciplina).permit(:nome, :cod_cred)
        end
end
