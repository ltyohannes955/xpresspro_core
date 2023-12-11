class JourneysController < ApplicationController
  include Common  

  private
  def model_params
    params.require(:payload).permit(:origin, :destination, :Departure_Date, :Departure_time, :status, :user_id, :driver_id, :vehicle_id, list_of_Sightseeing: [])
  end
end
