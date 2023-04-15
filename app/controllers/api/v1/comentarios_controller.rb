class Api::V1::ComentariosController < ApplicationController
    before_action :authenticate_user!

    ##INDEX
    def index
        @comentarios = Comentario.por_post(current_user)
        render json: @comentarios
    end

    ##POR ID
    def show
        @comentario_ = Comentario.find(params[:id])
        if @comentario_
            render json: @comentario_, status: 200
        else 
            render json: {error: 'NÃO EXISTE UM COMENTÁRIO COM ESSE ID!'}, status: 404 
        end 
       
    end

    def create
        @comentario_ = Comentario.new(parametros_comentarios)
        if @comentario_.save
            render json: @comentario_, status: 201
        else
            render json: @comentario_.errors, status: 404
        end
    end

    def update
        @comentario_ = Comentario.find(params[:id])
        if @comentario_
            @comentario_.update(parametros_comentarios)
            render json: {message: 'COMENTÁRIO ATUALIZADO COM SUCESSO!'}, status: 200
        else 
            render json: {error: 'SEU COMENTÁRIO NÃO PODE SER ATUALIZADO!'}, status: 404
        end
    end

    def destroy
        @comentario_ = Comentario.find(params[:id])
        if @comentario_
            @comentario_.destroy
            render json: {message: 'COMENTÁRIO APAGADO!'}, status: 200
        else
            render json: {error: 'SEU COMENTÁRIO NÃO PODE SER DELETADO!'}, status: 404
        end
    end

    private


    def parametros_comentarios
        params.require(:comentario).permit(:nome, :comentarioT, :post_id, :created_at, :updated_at)
    end
end
######################### controllers endpoint COMENTÁRIOS