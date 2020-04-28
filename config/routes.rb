Rails.application.routes.draw do
  devise_for :users
  devise_for :grocery_stores
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'application#index'
  resources :grocery_stores, only: [:index, :show]
  resources :products, only: [:new]
  mount Sidekiq::Web, at: 'sidekiq'
end
