Rails.application.routes.draw do

  resources :vehicles

  resources :drivers

  resources :sightseeings

  resources :users, only: [:create]
  post "/login", to: "users#login"
  resources :seats


  resources :journeys

end

