Rails.application.routes.draw do
  root to: 'dashboards#show'
  devise_for :admins, controllers: { sessions: 'admin/sessions' }
  devise_for :users, controllers: { sessions: 'users/sessions', :omniauth_callbacks => "users/omniauth_callbacks" }
  #devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :users, only: [:show, :edit, :update] do
    resources :recommended_posts, only: [:index]
  end

  resources :posts, except: [:index] do
    resources :responses, only: [:create]
  end

  resources :users
  resources :posts
  get 'users/json' => 'users#json'
end
