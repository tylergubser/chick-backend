class PostsController < ApplicationController

    def index
        render json: Post.all
    end

    def create
        post = Post.create(post_params)
        render json: post, status: :created
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

    
    private

    def post_params 
        params.require(:post).permit(:comment, :user_id)
    end
end
