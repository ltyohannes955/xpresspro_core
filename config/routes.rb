Rails.application.routes.draw do

  resources :vehicles

  resources :drivers

  resources :sightseeings

  resources :users
  post "/login", to: "users#login"
  resources :seats


  resources :journeys

end

