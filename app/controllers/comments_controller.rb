class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def create
    @comment = Comment.new(params[:comment])
    @comment.post_id = session[:post_id]
    @comment.user_id= session[:user_id]
    @comment.save

    redirect_to post_path(@comment.post_id)
  end

  def show 
    @comment = Comment.find(params[:id])
    redirect_to post_path(@comment.post_id)
  end

  def new
    @comment = Comment.new
  end
   



end
