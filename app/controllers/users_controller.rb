class UsersController < ApplicationController

  before_action :logged_in?, only: [:index, :new, :edit, :show, :update]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
  	user_params = params.require(:user).permit(:first_name, :last_name, :email, :password, :current_city, :avatar)
  	@user = User.create(user_params)
    login(@user)
  	redirect_to @user
  end

  def show
  	@user = User.find_by_id(params[:id])
    @posts = @user.posts
    if @user != current_user
      redirect_to current_user
    end
  end

  def edit 
    @user = User.find_by_id(params[:id])
  end

  def update
    user = User.find_by_id(params[:id])
    user_params = get_user_params
    user.update_attributes(user_params)
    redirect_to user_path(user)
  end

  private
    def get_user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :current_city)
    end

#delete method will require @user.avatar = nil
end
