Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  resources :tweets, only: [:index]
  resources :home, only: [:index]
  resources :intro, only: [:index]
  resources :schedule, only: [:index]
  resources :lesson, only: [:index]
  resources :access, only: [:index]
  resources :blog, only: [:index]
end