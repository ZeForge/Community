Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root to: 'homes#show'
#  root to: 'users#index'
  resources :users
  resources :posts
  get 'users/json' => 'users#json'
end
