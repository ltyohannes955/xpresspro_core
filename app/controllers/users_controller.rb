class UsersController < ApplicationController
    include Common

    private

    def model_params
        params.require(:payload).permit(:first_name, :last_name, :email, :phone_number, :password)
    end
end
