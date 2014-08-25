class CommentsController < ApplicationController

  def create
    @posts = Post.recent
    @post = Post.find(params[:id])
    @comment = @post.comments.new(params[:comment])
    if @comment.save
      redirect_to :back
    else
      render('/posts/index.html')
    end
  end

end
