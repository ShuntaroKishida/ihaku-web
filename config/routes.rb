Rails.application.routes.draw do
  devise_for :users
  get 'tweets', to: 'tweets#index'
end
