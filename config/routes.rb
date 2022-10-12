Rails.application.routes.draw do
  get 'users/index', to: 'users#index'
  root 'users#index'
  
  get 'users/new', to: 'users#new'
  
  post 'users', to: 'users#create'
  
  delete 'users/:id', to: 'users#destroy'
  
end