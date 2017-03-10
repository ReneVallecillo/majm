Rails.application.routes.draw do
  get 'subscription/create'

  namespace :admin do
    resources :admin_users
    resources :posts
    resources :subscriptions

    root to: "admin_users#index"
  end

  devise_for :admin_users
  resources :subscriptions
  get 'home/index'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
