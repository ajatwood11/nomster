Rails.application.routes.draw do
  devise_for :users
  root 'places#index'
  resources :places do
    resources :comments, only: :create
    resources  :photos, only: :create
    resources :captions, only: :create
    resources :image_tags, only: :create
    
  end
end
