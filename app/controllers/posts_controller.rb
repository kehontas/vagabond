class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
  end

  def create
    post_params = params.require(:post).permit(:title, :content)
    @post = Post.create(post_params)

    redirect_to posts_path
  end
end
