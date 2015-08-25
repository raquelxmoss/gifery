Rails.application.routes.draw do
  root 'application#index'
  devise_for :users

  namespace :api, defaults: { format: :json } do
    # http://api.localhost:3000/v1/products/1
    constraints: { subdomain: 'api' }, path: '/'  do
       scope module: :v1 do
          # We are going to list our resources here
        end
     end
   end


end
