Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'
  resources :cars do
    resources :reviews, only: %i[new create]
    resources :reservations, only: %i[new create show]
  end
  resources :reviews, only: [:destroy]
  resources :reservations, only: [:destroy]
end
