class VehiclesController < ApplicationController

    include Common

    private

    def model_params
        params.require(:payload).permit(:vehicle_name, :vehicle_model, :luggage_capacity, :price_per_day, :person_capacity, :weightcapacity, :frontview, :backview, :sideview)
    end 
end
