class SightseeingsController < ApplicationController
    include Common

    private

    def model_params
        params.require(:payload).permit(:location, :description, :price_per_hour, :time_spent, :image)
    end 
end
