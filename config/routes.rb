Rails.application.routes.draw do
  devise_for :users
  resources :tweets
  resources :users, only: [:show]
  resources :rooms, only: [:new, :create, :show, :index]
  resources :messages, only: [:create]
  root 'static_pages#home'
  get 'static_pages/help'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
