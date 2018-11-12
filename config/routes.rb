Rails.application.routes.draw do
  devise_for :users
  resources :rooms, only: [:new, :create, :show] do
    collection do
      post :group_create
    end
  end
  resources :ban, only: [:index]
  resources :messages, only: [:create]
  root 'users#index'

  get '/admin', to: 'admin/dashboards#index'
  namespace :admin do
    resources :users
    resources :rooms
    resources :messages
    resources :inappropriate_words
  end
end
