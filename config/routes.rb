require 'sidekiq/web'

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :order_details
  resources :orders
  resources :products, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :customers
  resources :staffs
  resources :categories
  resources :brands
  resources :customers do
    collection do
      get 'get_customer_by_phone'
    end
  end
  
  # Restrict access to Sidekiq's web interface to users with admin privileges
  authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  devise_for :users
  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
