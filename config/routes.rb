Rails.application.routes.draw do
  resources :tags
  resources :gifs
  root 'application#index'
  devise_for :users
end
