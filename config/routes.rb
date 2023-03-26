require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  # for Sidekiq
  authenticate :user, ->(user) { user.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  namespace :admin do
    resources :articles
    resources :products
    resources :home, only: %i[index]
  end

  get '/:slug', to: 'articles#index'
  get '/san-pham/:slug', to: 'products#index'
end
