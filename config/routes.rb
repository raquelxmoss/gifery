Rails.application.routes.draw do
  root 'application#index'
  devise_for :users
  resources :user_gifs
  resources :gifs, only: [:index, :show]

  namespace :api do
    resources :user_gifs, only: [:create, :show, :destroy]
  end

end
