Rails.application.routes.draw do
  devise_for :users
  resources :rooms, only: [:create, :show]
  resources :messages
  resources :user_rooms
  root 'users#index'
end
