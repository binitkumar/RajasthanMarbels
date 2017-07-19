Rails.application.routes.draw do
  resources :stock_collections
  resources :customers
  resources :stocks do
    collection do
      get :low_stock
    end
  end
  resources :orders
  root to: 'orders#index'
  devise_for :users
end
