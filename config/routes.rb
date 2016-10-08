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
  end

  resources :products, only: [:index]
  resources :colors, only: [:index]
  resources :photos, only: [:index, :new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
