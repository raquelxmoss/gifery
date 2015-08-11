Rails.application.routes.draw do
  root 'application#index'
  devise_for :users

  namespace :api do
    resources :user_gifs, only: [:create, :show, :destroy]
  end

end
