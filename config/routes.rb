Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'posts#index'})
  match('/posts/new/', {:via => :get, :to => 'posts#new'})
end
