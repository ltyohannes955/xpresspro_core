Rails.application.routes.draw do

  resources :vehicles

  resources :drivers

  resources :sightseeings

  resources :users
  post "/login", to: "users#login"
  resources :seats
  
  namespace :api do
    resources :notifications, only: [:create]
  end 

  resources :journeys, only: %i[index show create update destroy]

end

