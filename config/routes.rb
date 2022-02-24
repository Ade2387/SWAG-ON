Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/navbar-brand', to: 'pages#homepage'
  get '/dashboard', to: 'pages#dashboard'
  resources :cars do
    resources :reviews, only: %i[new create]
    resources :reservations, only: %i[new create]
  end
  resources :reviews, only: [:destroy]
  resources :reservations, only: [:destroy, :show]
  patch '/reservations/:id/accept', to: 'reservations#accept', as: :accept_reservation
  patch '/reservations/:id/decline', to: 'reservations#decline', as: :decline_reservation
end
