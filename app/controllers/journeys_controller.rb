class JourneysController < ApplicationController
  include Common  

  private
  def model_params
    permitted_attributes = params.require(:payload).permit(
      :origin, 
      :destination, 
      :Departure_Date, 
      :Departure_time, 
      :status, 
      :user_id, 
      :driver_id, 
      :vehicle_id
    )
  
    permitted_attributes[:list_of_Sightseeing] =
      params.dig(:payload, :list_of_Sightseeing)&.map { |sightseeing| sightseeing.permit! }
  
    permitted_attributes
  end
end
