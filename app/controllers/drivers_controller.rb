class DriversController < ApplicationController
    include Common

    private

    def model_params
        params.require(:payload).permit(:driver_name, :phone_number, :email, :status, :language)
    end 
end
