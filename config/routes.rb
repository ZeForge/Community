Rails.application.routes.draw do
  root to: 'dashboards#show'
  devise_for :admins, controllers: { sessions: 'admin/sessions' }
  devise_for :users, controllers: { sessions: 'users/sessions', :omniauth_callbacks => "users/omniauth_callbacks" }
  #devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users
  resources :posts
  get 'users/json' => 'users#json'
end
