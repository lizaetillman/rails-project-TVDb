Rails.application.routes.draw do

  root 'sessions#home'
  
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/sessions/', to: 'sessions#destroy'

  resources :users
  resources :reviews
  resources :lists
  resources :shows
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/dashboard' => 'users#dashboard'
end
