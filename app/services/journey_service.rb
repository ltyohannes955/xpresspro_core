# app/services/journey_service.rb

class JourneyService
    def initialize(journey)
      @journey = journey
    end
  
    def update_journey(params)
      if @journey.update(params)
        # Any additional logic or actions after successful update
        # For example, you might want to notify users or perform other related tasks
        return { success: true, message: 'Journey updated successfully' }
      else
        return { success: false, errors: @journey.errors.full_messages }
      end
    end
  
    def cancel_journey
      @journey.update(status: Journey::CANCELLED)
      # Any additional logic or actions after journey cancellation
      return { success: true, message: 'Journey cancelled successfully' }
    end
  
    # You can add more methods as needed for your specific use cases
  
    private
  
    # Add any private helper methods if needed
  end
  