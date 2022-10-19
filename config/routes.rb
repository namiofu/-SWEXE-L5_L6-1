Rails.application.routes.draw do
  resources :users
  resources :tweets
  
  root 'top#main'
  get 'top/main'
  post 'top/login'
  get 'top/logout'
  
  resources :likes
  #post 'likes', to: 'likes#create'
  #delete 'likes/:id', to: 'likes#destroy'
end
