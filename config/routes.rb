Rails.application.routes.draw do
  resources :customers
  resources :stocks
  resources :orders
  root to: 'orders#index'
  devise_for :users
end
