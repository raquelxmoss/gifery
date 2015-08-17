Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  root 'application#index'
  devise_for :users

  resources :users, only: [:show, :index] do
    resources :user_gifs
  end

  resources :gifs, only: [:index, :show]

  namespace :api do
    resources :user_gifs, only: [:create, :show, :destroy]
  end

end
