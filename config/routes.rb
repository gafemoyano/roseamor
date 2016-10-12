Rails.application.routes.draw do
  get 'products/index'

  root 'home#index'

  namespace :admin do
    get '/' => 'categories#index'
    resources :categories
    resources :colors
    resources :distributors
    resources :photos
    resources :products
    get 'home', to: 'home#show'
    post 'home_create_or_update', to: :create_or_update, controller: 'home'
    # resource :home, controller: 'home'
  end

  resources :distributors, only: [:index]
  resources :products, only: [:index]
  resources :colors, only: [:index]
  resources :photos, only: [:index, :new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
