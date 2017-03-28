Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'homes#show'
  #root to: 'posts#index'

  devise_for :admins, controllers: { sessions: 'admin/sessions' }
  devise_for :users, controllers: { sessions: 'users/sessions', :omniauth_callbacks => "users/omniauth_callbacks" }

  devise_scope :user do
    resource :registration,
      only: [:new, :create, :edit, :update],
      path: 'users',
      path_names: { new: 'sign_up' },
      controller: 'devise/registrations',
      as: :user_registration do
         get :cancel
      end
  end

  #devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :users
  
  resources :courses, only: [:index, :show] do
    get "(page/:page)", action: :index, on: :collection, as: ""
    resources :enrollments, only: [:create]
  end

  resources :lessons, only: :show

  namespace :instructor do
  resources :courses, only: [:new, :create, :show] do
    resources :sections, only: [:create, :update]
  end
  get 'dashboard', to: 'courses#index', as: :dashboard
  resources :sections, only: [] do
    resources :lessons, only: [:create, :update]
  end
end


  #
  # Dashboards
  #
  get 'my_dashboard', to: 'dashboards#show', as: :my_dashboard
  #
  # Profiles
  #
  # get 'profile/:user_id/edit', to: 'profiles#edit', as: :profile_path
  get 'profile/posts', to: 'users#posts', as: :profile_posts
  get 'profile/:id', to: 'profiles#show', as: :profile
  get 'profile/:id/edit', to: 'profiles#edit', as: :edit_profile
  patch 'profile/edit', to: 'profiles#update', as: :update_profile
  get 'my_profile', to: 'profiles#my_profile', as: :my_profile
  get 'profiles', to: 'profiles#index', as: :profiles
  #
  # Skills
  #
  resources :skills
  resources :myskills
  #
  get 'my_skills', to: 'myskills#index', as: :my_skills
  #get 'new_skills', to: 'skills#new', as: :new_skills


  #
  # Categories
  #
  get 'category/:id', to: 'categories#show', as: :category

  #  resources :profiles

  resources :posts
    get 'users/json' => 'users#json'
    put 'publish' => 'posts#publish'
    put 'unpublish' => 'posts#unpublish'
end
