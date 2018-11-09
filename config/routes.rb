Rails.application.routes.draw do
  devise_for :users
  resources :rooms, only: [:new, :create, :show]
  resources :messages, only: [:create]
  root 'users#index'

  get '/admin', to: 'admin/dashboards#index'
  namespace :admin do
    resources :users
    resources :rooms
    resources :messages
  end
end
