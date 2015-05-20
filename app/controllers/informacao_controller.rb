class InformacaoController < ApplicationController
    def index
        @informacoes = Informacao.all        
    end

    def show
        @informacao = Informacao.find(params[:id])
    end

    def new
        @informacao = Informacao.new
    end

    def edit
        @informacao = Informacao.find(params[:id])
    end

    def create
        @informacao = Informacao.new(informacao_params)
 
        if @informacao.save
            redirect_to @informacao
        else
            render 'new'
        end
    end

    def update
        @informacao = Informacao.find(params[:id])
     
        if @informacao.update(informacao_params)
            redirect_to @informacao
        else
            render 'edit'
        end
    end

    def destroy
        @informacao = Informacao.find(params[:id])

        @informacao.destroy
        redirect_to informacao_index_path
    end

    private
        def informacao_params
            params.require(:informacao).permit(:curso, :descricao)
        end
end
