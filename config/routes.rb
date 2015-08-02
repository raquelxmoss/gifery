Rails.application.routes.draw do
  resources :tags
  resources :gifs
  root 'application#index'
  devise_for :users

  get 'api/v1/save-gif', to: 'api#save_gif', as: 'save_gif'
end
