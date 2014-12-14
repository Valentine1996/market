Rails.application.routes.draw do

  resources :order_details

  resources :orders

  resources :customers

  resources :products

  resources :merchants

  resources :addresses

  resources :users

  root to: 'visitors#index'

  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
end
