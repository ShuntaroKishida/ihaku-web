Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :users, only: [:edit, :update]
  root to: 'home#index'
  resources :tweets, only: [:index, :new, :create]
  resources :home, only: [:index]
  resources :intro, only: [:index]
  resources :schedule, only: [:index]
  resources :access, only: [:index]
  resources :lesson, only: [:index]
  resources :lesson_price, only: [:index]
  resources :lesson_days, only: [:index]
  resources :lesson_bring, only: [:index]
  resources :lesson_events, only: [:index]
  resources :lesson_rest, only: [:index]
  resources :blogs
end