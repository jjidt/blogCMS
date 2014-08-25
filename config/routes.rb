Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'posts#index'})
  match('/posts/new/', {:via => :get, :to => 'posts#new'})
  match('/posts/', {:via => :post, :to => 'posts#create'})
end
