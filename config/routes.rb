Rails.application.routes.draw do
  devise_for :users
  root 'topics#index'
  resources :topics, only: [:index]
  resources :messages, only: [:index]
  resources :artcles, only: [:index]
  resources :users, only: [:show]
  resources :groups, only: [:index,:new, :create,:edit, :update] do
    resources :messages, only[:index, :create]
  end
end