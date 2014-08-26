class CommentsController < ApplicationController

  def create
    @posts = Post.recent
    @post = Post.find(params[:id])
    @comment = @post.comments.new(params[:comment])
    if @comment.save
      redirect_to :back
    else
      redirect_to :back
    end
  end

  def delete
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to :back
  end

end
