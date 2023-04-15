class Api::V1::PostsController < ApplicationController
    before_action :authenticate_user!

    ## INDEX
    def index
        @posts = Post.por_usuario(current_user)
        render json: @posts
    end

    ## POR ID
    def show
        @post = Post.find(params[:id])
        if @post
            render json: @post, status: 200
        else 
            render json: {error: 'NÃO EXISTE UM POST COM ESSE ID!'}, status: 404 
        end      
    end

    #### NOVO POST
    def create
        @post = Post.new(parametros_)
        if @post.save
            render json: @post, status: 201
        else
            render json: @post.errors, status: :unprocessable_entity
        end
    end


    ## ATUALIZAR POR ID
    def update
        @post = Post.find(params[:id])
        if @post
            @post.update(parametros_)
            render json: {message: 'POST ATUALIZADO COM SUCESSO!'}, status: 200
        else 
            render json: {error: 'POST NÃO ATUALIZADO!'}, status: 404
        end
    end
     
    ## DELETAR POR ID
    def destroy
        @post = Post.find(params[:id])
        if @post
            @post.destroy
            render json: {message: 'POST DELETADO!'}, status: 200
        else
            render json: {error: 'SEU POST NAO PODE SER DELETADO'}, status: 404
        end
    end

    private

   

    def parametros_
        params.require(:post).permit(:id, :titulo, :texto, :user_id, :created_at, :updated_at)
    end

end

######################### controllers endpoint POSTS