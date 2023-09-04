Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :users, only: [:edit, :update]
  root to: 'home#index'
  resources :tweets, only: [:index, :new, :create]
  resources :home, only: [:index]
  resources :intro, only: [:index]
  resources :schedule, only: [:index]
  resources :lesson, only: [:index]
  resources :access, only: [:index]
  resources :blog, only: [:index]
end