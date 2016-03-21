Rails.application.routes.draw do
  resources :fando_leagues
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
