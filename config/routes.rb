Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/show'

  resources :regrets
  devise_for :users
  resources :guestbooks

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
