Rails.application.routes.draw do
  root to: 'customers#index'

  resources :customers, only: [:index]
  resources :customers do
    collection do
      get 'alphabetized'
      get 'missing_email'
    end
  end

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
