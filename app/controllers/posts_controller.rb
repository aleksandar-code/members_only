class PostsController < ApplicationController
  before_action :require_login, only: [:new, :create]
  
  def index
      @posts = Post.all
  end
  
  def new
      @post = Post.new
  end


  def create
      @user = User.new(user_params)

      if @user.save
      redirect_to root_path
      else
      render :new
      end
  end

  private
  
  def user_params
      params.require(:user).permit(:username, :email, :password)
  end
end
