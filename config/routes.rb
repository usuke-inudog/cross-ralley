Rails.application.routes.draw do
  devise_for :users
  root 'topics#index'
  resources :topics, only: [:index]
  resources :messages, only: [:index]
  resources :likes, only: [:create, :destroy]
  resources :artcles  do
    resources :comments, only:[:create]
    collection do 
      get 'search'
    end
  end
  resources :users, only: [:show]
  resources :groups, only: [:index,:new, :create,:edit, :update] do
    resources :messages, only:[:index, :create]
  end
end