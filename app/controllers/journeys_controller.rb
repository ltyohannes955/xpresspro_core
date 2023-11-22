class JourneysController < ApplicationController
    include Common

    private

    def model_params
        params.request(:payload).permit(:origin, :destination, :Departure_Date, :Departure_time, :list_of_Sightseeing, :status, :user_id, :driver_id, :vehicle_id)
    end
end
