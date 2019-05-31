Rails.application.routes.draw do
  resources :user_sessions, only: [ :new, :create, :destroy]
  resources :users

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout
  root to: 'yoyos#index'

  resources :yoyos do
    resources :comments
    resources :makers
    resources :models
  end

  resources :makers
  resources :models
end
