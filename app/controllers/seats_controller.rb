class SeatsController < ApplicationController
    include Common

    private

    def model_params
        params.require(:payload).permit(:seat_name, :seat_description, :image)
    end 
end
