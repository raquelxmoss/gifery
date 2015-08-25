Rails.application.routes.draw do
  root 'application#index'

   namespace :api, defaults: { format: :json }, path: '/'  do
      scope module: :v1 do
        resources :users, only: [:show, :create, :update, :destroy]
      end
    end
  # devise_for :users
end

