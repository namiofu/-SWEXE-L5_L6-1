Rails.application.routes.draw do
  resources :users
  resources :tweets
  
  root 'tops#main'
  get 'tops/main'
  post 'tops/login'
  get 'tops/logout'
  
  resources :likes
  #post 'likes', to: 'likes#create'
  #delete 'likes/:id', to: 'likes#destroy'
end
