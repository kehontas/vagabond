class PostsController < ApplicationController
  def index
  end

  def new
  end

  def show
  	@post = Post.find_by_id(params[:id])
  end
end
