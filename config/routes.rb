Rails.application.routes.draw do
  resources :tags
  resources :gifs
  root 'application#index'
  devise_for :users

  get 'api/v1/save-gif', to: 'api#save_gif', as: 'save_gif'
  get 'api/v1/tag-gif', to: 'api#tag_gif', as: 'tag_gif'
  delete 'api/v1/delete-gif', to: 'api#delete_gif', as: 'delete_gif'
  delete 'api/v1/delete-tag', to: 'api#delete_tag', as: 'delete_tag'

end
