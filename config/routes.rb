Rails.application.routes.draw do

  resources :vehicles

  resources :drivers

  resources :sightseeings

  resources :users
  resources :seats
  
  namespace :api do
    resources :notifications, only: [:create]
  end 

  resources :journeys

end

