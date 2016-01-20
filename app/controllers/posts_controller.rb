class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
  	@post = Post.find_by_id(params[:id])
  end

  def create
    @post = Post.new(post_params)
    @post = @post.user = current_user
    @post.save 
    redirect_to post_path
  end

  private
    def post_params
      params.require(:post).permit(:title, :content, :user_id)
    end
end
