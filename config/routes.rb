Rails.application.routes.draw do
  root 'users#index'
  resources :comments
  resources :posts
  resources :users
end
