class PostsController < ApplicationController

  def index
  	@posts = Post.all
  end

  def new
  	@post = Post.new
    @comment = Comment.new
  end
   
  def show 
    @post = Post.find(params[:id])
    @comment = Comment.new
    session[:post_id] = @post.id
    session[:user_id] = 1
  end

  def create
  	@post = Post.create(params[:post])
    if @post.save
      flash[:notice] = "Your post was saved."
    else
      ##need to validate
    end

  	redirect_to posts_path
  end



end
