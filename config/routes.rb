Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'posts#index'})
end
