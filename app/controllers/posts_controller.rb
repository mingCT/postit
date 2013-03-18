class PostsController < ApplicationController

  def index
  	@posts = Post.all
  end

  def new
  	@post = Post.new
  end
   
  def show 
    @post = Post.find(params[:id])
  end

  def create
  	@post = Post.create(params[:post])
  	redirect_to posts_path
  end



end
