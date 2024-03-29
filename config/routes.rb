Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'posts#index'})
  match('/posts/new/', {:via => :get, :to => 'posts#new'})
  match('/posts/', {:via => :post, :to => 'posts#create'})
  match('/posts/:id', {:via => :get, :to => 'posts#edit'})
  match('/posts/:id', {:via => [:patch, :put], :to => 'posts#update'})
  match('/posts/:id', {:via => :delete, :to => 'posts#delete'})
  match('/comments/:id', {:via => :post, :to => 'comments#create'})
  match('/comments/:id', {:via => :delete, :to => 'comments#delete'})
end
