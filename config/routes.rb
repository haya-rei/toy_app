Rails.application.routes.draw do
  resources :microposts
  resources :migroposts
  resources :users
  root "users#index"
end
