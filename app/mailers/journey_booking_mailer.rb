# app/mailers/journey_booking_mailer.rb
class JourneyBookingMailer < ApplicationMailer
    default from: 'samuel.abera@bitscollege.edu.et' 

    def booking_confirmation(user, journey)
      @user = user
      @journey = journey
      mail( to: @user.email, subject: 'Journey Booking Confirmation')
    end
  end
  
