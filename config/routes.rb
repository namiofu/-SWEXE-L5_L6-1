Rails.application.routes.draw do
  get 'users/index', to: 'users#index'
  root 'users#index'
  
  get 'users/new', to: 'users#new'
  
  post 'users', to: 'users#create'
  
  delete 'users/:id', to: 'users#destroy'
  
  get 'tweetss/index', to: 'tweets#index'
  root 'tweetss#index'
  
  get 'tweets/new', to: 'tweets#new'
  
  post 'tweets', to: 'tweets#create'
  
  delete 'tweets/:id', to: 'tweets#destroy'
  
end
