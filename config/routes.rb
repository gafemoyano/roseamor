Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get 'home', to: 'home#index'
  post '/', to: 'home#contact', as: :contact

  namespace :admin do
    get '/' => 'categories#index'
    resources :categories
    resources :colors
    resources :color_categories
    resources :distributors
      resources :products
    resources :home, only: [:edit, :update, :index]
    # resource :home, controller: 'home'
  end
  resources :colors, only: [:index]
  resources :distributors, only: [:index]
  resources :photos, only: [:index, :new, :create, :destroy]
  resources :products, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
