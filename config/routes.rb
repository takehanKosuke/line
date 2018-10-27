Rails.application.routes.draw do
  devise_for :users
  resources :rooms, only: [:create, :show]
  resources :messages, only: [:create]
  root 'users#index'
end
