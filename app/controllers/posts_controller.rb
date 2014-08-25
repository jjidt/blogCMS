class PostsController < ApplicationController

  def index
    @posts = Post.recent
    render('/posts/index.html.erb')
  end

  def new
    @post = Post.new
    render('/posts/new.html.erb')
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to('/')
    else
      render('/posts/new.html.erb')
    end
  end

  def edit
    @post = Post.find(params[:id])
    render('/posts/edit.html.erb')
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(params[:post])
      redirect_to('/')
    else
      render('/posts/edit.html.erb')
    end
  end

end
