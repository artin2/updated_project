Rails.application.routes.draw do
  devise_for :users
  resources :tweets
  resources :users, only: [:show]
  resources :chat_rooms, only: [:new, :create, :show, :index]
  root 'static_pages#home'
  get 'static_pages/help'
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
