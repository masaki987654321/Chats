Rails.application.routes.draw do
  get 'talkrooms/show'
  resources :remarks
  resources :rooms
end
