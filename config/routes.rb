require 'api_constraints'
Rails.application.routes.draw do
  root 'application#index'
  devise_for :users

   namespace :api, defaults: { format: :json },
                                constraints: { subdomain: 'api' }, path: '/'  do
      scope module: :v1,
                constraints: ApiConstraints.new(version: 1, default: true) do
        resources :users, only: [:show]
      end
    end
end

