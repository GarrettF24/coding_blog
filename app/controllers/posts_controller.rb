class PostsController < ApplicationController
  before_action :set_post, only: [:update, :destroy]
  def index
    @posts = Post.all
    render json: @posts
  end

  def create
    @post = Post.create(post_param)
    redner json: @posts
  end

  def update
    @post.update(post_param)
    render json: @post
  end

  def destroy
    @post.destroy
    head :no_content, status: :ok
  end

  private
  def set_post 
    @post = Post.find(params[:id])
  end

  def post_param
    params.require(:post).permit(:title, :body)
  end
end
