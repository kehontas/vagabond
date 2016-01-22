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
    post_params = params.require(:post).permit(:title, :content, :city_id)
    @post = Post.create(post_params)
    @post.city_id = City.find_by_id(params[:id])
    redirect_to posts_path
  end




  def destroy
    @post = Post.find_by_id(params[:id])
    @post.destroy
    redirect_to user_path(@user)
  end
end

