Rails.application.routes.draw do
  get 'artcles/index'
  root 'topics#index'
  resources :topics,only: [:index]
  resources :messages,only: [:index]
  resources :artcles,only: [:index]
end