class PostsController < ApplicationController
  def index
    @posts = Post.all
    render('/posts/index.html.erb')
  end

  def new
    @post = Post.new
    render('/posts/new.html.erb')
  end
end
