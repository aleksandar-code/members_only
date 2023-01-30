class PostsController < ApplicationController
  before_action :require_login, only: [:new, :create]

  def require_login
    unless signed_in?
      redirect_to new_member_session_url
    end
  end

  
  def index
      @posts = Post.all
      @signed_in_user = session[:user_id]
  end
  
  def new
      @post = Post.new
  end


  def create
      @post = Post.new(post_params)
      @post.member = @signed_in_user
      if @post.save
      redirect_to :root
      else
      render :new
      end
  end

  private
  
  def post_params
      params.require(:post).permit(:title, :body)
  end
end
