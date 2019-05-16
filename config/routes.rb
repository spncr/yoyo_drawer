Rails.application.routes.draw do
  root to: 'yoyos#index'

  resources :yoyos do
    resources :comments
    resources :makers
    resources :models
  end

  resources :makers
  resources :models
end
