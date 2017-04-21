# == Route Map
#
#                           Prefix Verb     URI Pattern                                            Controller#Action
#                    profiles_chat GET      /profiles/chat(.:format)                               profiles#chat
#                 profiles_profile GET      /profiles/profile(.:format)                            profiles#profile
#                             urls POST     /urls(.:format)                                        urls#create
#                          new_url GET      /urls/new(.:format)                                    urls#new
#                              url GET      /urls/:id(.:format)                                    urls#show
#                      rails_admin          /admin                                                 RailsAdmin::Engine
#                             root GET      /                                                      homes#show
#                new_admin_session GET      /admins/sign_in(.:format)                              admin/sessions#new
#                    admin_session POST     /admins/sign_in(.:format)                              admin/sessions#create
#            destroy_admin_session DELETE   /admins/sign_out(.:format)                             admin/sessions#destroy
#                 new_admin_unlock GET      /admins/unlock/new(.:format)                           devise/unlocks#new
#                     admin_unlock GET      /admins/unlock(.:format)                               devise/unlocks#show
#                                  POST     /admins/unlock(.:format)                               devise/unlocks#create
#                 new_user_session GET      /users/sign_in(.:format)                               users/sessions#new
#                     user_session POST     /users/sign_in(.:format)                               users/sessions#create
#             destroy_user_session DELETE   /users/sign_out(.:format)                              users/sessions#destroy
# user_facebook_omniauth_authorize GET|POST /users/auth/facebook(.:format)                         users/omniauth_callbacks#passthru
#  user_facebook_omniauth_callback GET|POST /users/auth/facebook/callback(.:format)                users/omniauth_callbacks#facebook
#                new_user_password GET      /users/password/new(.:format)                          devise/passwords#new
#               edit_user_password GET      /users/password/edit(.:format)                         devise/passwords#edit
#                    user_password PATCH    /users/password(.:format)                              devise/passwords#update
#                                  PUT      /users/password(.:format)                              devise/passwords#update
#                                  POST     /users/password(.:format)                              devise/passwords#create
#         cancel_user_registration GET      /users/cancel(.:format)                                devise/registrations#cancel
#            new_user_registration GET      /users/sign_up(.:format)                               devise/registrations#new
#           edit_user_registration GET      /users/edit(.:format)                                  devise/registrations#edit
#                user_registration PATCH    /users(.:format)                                       devise/registrations#update
#                                  PUT      /users(.:format)                                       devise/registrations#update
#                                  DELETE   /users(.:format)                                       devise/registrations#destroy
#                                  POST     /users(.:format)                                       devise/registrations#create
#                                  GET      /users/cancel(.:format)                                devise/registrations#cancel
#                                  GET      /users/sign_up(.:format)                               devise/registrations#new
#                                  GET      /users/edit(.:format)                                  devise/registrations#edit
#                                  PATCH    /users(.:format)                                       devise/registrations#update
#                                  PUT      /users(.:format)                                       devise/registrations#update
#                                  POST     /users(.:format)                                       devise/registrations#create
#                            users GET      /users(.:format)                                       users#index
#                                  POST     /users(.:format)                                       users#create
#                         new_user GET      /users/new(.:format)                                   users#new
#                        edit_user GET      /users/:id/edit(.:format)                              users#edit
#                             user GET      /users/:id(.:format)                                   users#show
#                                  PATCH    /users/:id(.:format)                                   users#update
#                                  PUT      /users/:id(.:format)                                   users#update
#                                  DELETE   /users/:id(.:format)                                   users#destroy
#                          courses GET      /courses(/page/:page)(.:format)                        courses#index
#               course_enrollments POST     /courses/:course_id/enrollments(.:format)              enrollments#create
#                                  GET      /courses(.:format)                                     courses#index
#                           course GET      /courses/:id(.:format)                                 courses#show
#                           lesson GET      /lessons/:id(.:format)                                 lessons#show
#       instructor_course_sections POST     /instructor/courses/:course_id/sections(.:format)      instructor/sections#create
#        instructor_course_section PATCH    /instructor/courses/:course_id/sections/:id(.:format)  instructor/sections#update
#                                  PUT      /instructor/courses/:course_id/sections/:id(.:format)  instructor/sections#update
#               instructor_courses POST     /instructor/courses(.:format)                          instructor/courses#create
#            new_instructor_course GET      /instructor/courses/new(.:format)                      instructor/courses#new
#                instructor_course GET      /instructor/courses/:id(.:format)                      instructor/courses#show
#             instructor_dashboard GET      /instructor/dashboard(.:format)                        instructor/courses#index
#       instructor_section_lessons POST     /instructor/sections/:section_id/lessons(.:format)     instructor/lessons#create
#        instructor_section_lesson PATCH    /instructor/sections/:section_id/lessons/:id(.:format) instructor/lessons#update
#                                  PUT      /instructor/sections/:section_id/lessons/:id(.:format) instructor/lessons#update
#                     my_dashboard GET      /my_dashboard(.:format)                                dashboards#show
#                    profile_posts GET      /profile/posts(.:format)                               users#posts
#                          profile GET      /profile/:id(.:format)                                 profiles#show
#                     edit_profile GET      /profile/:id/edit(.:format)                            profiles#edit
#                   update_profile PATCH    /profile/edit(.:format)                                profiles#update
#                       my_profile GET      /my_profile(.:format)                                  profiles#my_profile
#                         profiles GET      /profiles(.:format)                                    profiles#index
#                    enrolled_page GET      /my_enrollements(.:format)                             enrollments#show
#                           skills GET      /skills(.:format)                                      skills#index
#                                  POST     /skills(.:format)                                      skills#create
#                        new_skill GET      /skills/new(.:format)                                  skills#new
#                       edit_skill GET      /skills/:id/edit(.:format)                             skills#edit
#                            skill GET      /skills/:id(.:format)                                  skills#show
#                                  PATCH    /skills/:id(.:format)                                  skills#update
#                                  PUT      /skills/:id(.:format)                                  skills#update
#                                  DELETE   /skills/:id(.:format)                                  skills#destroy
#                         myskills GET      /myskills(.:format)                                    myskills#index
#                                  POST     /myskills(.:format)                                    myskills#create
#                      new_myskill GET      /myskills/new(.:format)                                myskills#new
#                     edit_myskill GET      /myskills/:id/edit(.:format)                           myskills#edit
#                          myskill GET      /myskills/:id(.:format)                                myskills#show
#                                  PATCH    /myskills/:id(.:format)                                myskills#update
#                                  PUT      /myskills/:id(.:format)                                myskills#update
#                                  DELETE   /myskills/:id(.:format)                                myskills#destroy
#                        my_skills GET      /my_skills(.:format)                                   myskills#index
#                         category GET      /category/:id(.:format)                                categories#show
#                            posts GET      /posts(.:format)                                       posts#index
#                                  POST     /posts(.:format)                                       posts#create
#                         new_post GET      /posts/new(.:format)                                   posts#new
#                        edit_post GET      /posts/:id/edit(.:format)                              posts#edit
#                             post GET      /posts/:id(.:format)                                   posts#show
#                                  PATCH    /posts/:id(.:format)                                   posts#update
#                                  PUT      /posts/:id(.:format)                                   posts#update
#                                  DELETE   /posts/:id(.:format)                                   posts#destroy
#                       users_json GET      /users/json(.:format)                                  users#json
#                          publish PUT      /publish(.:format)                                     posts#publish
#                        unpublish PUT      /unpublish(.:format)                                   posts#unpublish
#
# Routes for RailsAdmin::Engine:
#   dashboard GET         /                                      rails_admin/main#dashboard
#       index GET|POST    /:model_name(.:format)                 rails_admin/main#index
#         new GET|POST    /:model_name/new(.:format)             rails_admin/main#new
#      export GET|POST    /:model_name/export(.:format)          rails_admin/main#export
# bulk_delete POST|DELETE /:model_name/bulk_delete(.:format)     rails_admin/main#bulk_delete
# bulk_action POST        /:model_name/bulk_action(.:format)     rails_admin/main#bulk_action
#        show GET         /:model_name/:id(.:format)             rails_admin/main#show
#        edit GET|PUT     /:model_name/:id/edit(.:format)        rails_admin/main#edit
#      delete GET|DELETE  /:model_name/:id/delete(.:format)      rails_admin/main#delete
# show_in_app GET         /:model_name/:id/show_in_app(.:format) rails_admin/main#show_in_app
#

Rails.application.routes.draw do

  #
  # Homepage
  #
  root to: 'homes#show'
  #
  # Rails Admin
  #
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  #
  # Chat
  #
  get 'profiles/chat'
  get 'profiles/profile'
  resources :urls, only: [:show, :new, :create]
  #
  # Devise
  #
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

  #
  # Users
  #
  resources :users

  #
  # Courses, Lessons, Instructors
  #
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
  # Course Enrollments
  #get "enrolled/:enrolled_page", to: 'enrollments#show', as: "enrolled_page"
  get "my_enrollements", to: 'enrollments#show', as: "enrolled_page"
  #
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

  #
  # Posts
  #
  resources :posts
    get 'users/json' => 'users#json'
    put 'publish' => 'posts#publish'
    put 'unpublish' => 'posts#unpublish'
end
