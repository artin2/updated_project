Rails.application.routes.draw do
  get 'registrations/sign_up_params'
  get 'registrations/account_update_params'
  devise_for :users
  resources :tweets
  root 'static_pages#home'
  get 'static_pages/help'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
