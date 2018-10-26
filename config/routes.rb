Rails.application.routes.draw do
  devise_for :users
  resources :rooms
  resources :messages
  root 'welcome#index'
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
