class PostsController < ApplicationController

  before_filter :find_post, only: [:show, :update]

  def index
  	@posts = Post.all
  end

  def new
  	@post = Post.new
    @comment = Comment.new
  end
   


  def create
  	@post = Post.create(params[:post])
    @post.user_id = 1
    if @post.save
      flash[:notice] = "Your post was saved."
      redirect_to posts_path
    else
      render 'new'
    end
  	
  end

  def show 
    @post = Post.find(params[:id])
    @comment = @post.comments.build
  end

  def find_post
    @post = Post.create(params[:post])
    
  end

  def update
    
  end

  def edit
    
  end

  def destroy
    
  end

end
