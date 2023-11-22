Rails.application.routes.draw do

  resources :vehicles

  resources :drivers

  resources :sightseeings

  resources :users
  resources :seats


  resources :journeys

end

