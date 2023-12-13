class BlogsController < ApplicationController
    include Common

    private

    def model_params
        params.require(:payload).permit(:comment, :stars, :user_id)
    end 
end
