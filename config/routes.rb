Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root 'topics#index'
  resources :topics,only: [:index]
  resources :messages,only: [:index]
  resources :artcles,only: [:index]
  resources :users,only: [:show]
end