Rails.application.routes.draw do
  #  root to: 'homes#show'
  root to: 'posts#index'

  devise_for :admins, controllers: { sessions: 'admin/sessions' }
  devise_for :users, controllers: { sessions: 'users/sessions', :omniauth_callbacks => "users/omniauth_callbacks" }
  #devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :users, only: [:edit, :update] do
    resources :recommended_posts, only: [:index]
  end


  #
  # Profiles
  #
  # get 'profile/:user_id/edit', to: 'profiles#edit', as: :profile_path
  get 'profile/posts', to: 'users#posts', as: :profile_posts
  get 'profile', to: 'profiles#show', as: :profile
  get 'profile/edit', to: 'profiles#edit', as: :profile_edit
  patch 'profile/edit', to: 'profiles#edit', as: :profile_update


  #  resources :profiles

  resources :posts
    get 'users/json' => 'users#json'
    put 'publish' => 'posts#publish'
    put 'unpublish' => 'posts#unpublish'
end
