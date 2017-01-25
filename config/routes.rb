Rails.application.routes.draw do
  get 'registry/index'

  get 'welcome/index'
  get 'welcome/show'
  get 'registry/index'
  get 'user_entry' => 'guestbooks#user_entry'

  resources :regrets
  devise_for :users
  resources :guestbooks

  root 'welcome#index'
  get 'user_root' => 'welcome#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
