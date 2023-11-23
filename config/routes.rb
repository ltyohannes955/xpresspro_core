Rails.application.routes.draw do

  resources :vehicles

  resources :drivers

  resources :sightseeings

  resources :users
  resources :seats


  resources :journeys do
    member do
      patch 'update_journey'
      put 'cancel_journey'
    end
  end
end

