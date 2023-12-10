class JourneysController < ApplicationController

    def index
        journeys = Journey.all
        render json: { success: true, data: journeys }
      end
  
    def show
        journey = Journey.find(params[:id])
        render json: { success: true, data: journey }
    end

    def create
        @journey = Journey.new(journey_params)
      
        if @journey.save
          # Trigger the email notification upon successful journey creation
          JourneyBookingMailer.booking_confirmation(current_user, @journey).deliver_now
      
          render json: { success: true, data: serialize(@journey) }, status: :created
        else
          puts "Journey creation failed with errors: #{journey.errors.full_messages}"
          render json: { success: false, error: @journey.errors.full_messages }, status: :unprocessable_entity
        end
      rescue => e
        puts "An error occurred: #{e.message}"
        render json: { success: false, error: e.message }
    end

    def update
        journey = Journey.find(params[:id])
    
        if journey.update(journey_params)
          render json: { success: true, data: journey }
        else
          render json: { success: false, error: journey.errors.full_messages[0] }, status: :unprocessable_entity
        end
    end
  
    def destroy
        journey = Journey.find(params[:id])
        journey.destroy
        render json: { success: true, message: 'Journey deleted successfully' }
    end
  
    private
  
    def journey_params
      params.require(:payload).permit(:origin, :destination, :Departure_Date, :Departure_time, :list_of_Sightseeing, :status, :user_id, :driver_id, :vehicle_id)
    end
  
    def set_journey
      @obj = @clazz.find(params[:id])
    end
  
    def journey_errors
      @journey.errors.full_messages[0]
    end
end
  