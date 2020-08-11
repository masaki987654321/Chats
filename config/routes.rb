Rails.application.routes.draw do
  root to: 'rooms#index'
  devise_for :users
  resources :remarks
  resources :rooms
end
