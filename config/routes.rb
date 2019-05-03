Rails.application.routes.draw do
  root to: 'yoyos#index'
  resources :yoyos
end
