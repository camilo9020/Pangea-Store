Rails.application.routes.draw do  
  namespace :admin do
    get 'dashboard/home'
  end

  root "pages#home"

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  

  resources :products, only: [:index, :show]
  resources :orders, only: [:index]
  resources :cart_items, only: [:index, :create, :update, :destroy]

  namespace :admin do
    resources :categories, except: [:show]
    resources :products
    resources :orders, only: [:index, :edit, :update]  
  end
end
