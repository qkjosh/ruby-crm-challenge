Rails.application.routes.draw do
  root to: 'customers#index'

  resources :customers, only: [:index]

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
