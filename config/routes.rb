Rails.application.routes.draw do
  namespace :admin do
    resources :admin_users
resources :posts

    root to: "admin_users#index"
  end

  devise_for :admin_users
  get 'home/index'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
