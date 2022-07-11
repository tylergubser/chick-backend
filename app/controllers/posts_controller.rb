class PostsController < ApplicationController

    def index
        render json: Post.all
    end

    def show
        post = Post.find(params[:id])
        render json: post
    end

    def destroy
        post = Post.find(params[:id])
        post.destroy
        head :no_content
    end
    
end
