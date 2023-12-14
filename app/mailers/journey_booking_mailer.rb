# app/mailers/journey_booking_mailer.rb
class JourneyBookingMailer < ApplicationMailer
    default from: "xpresspro.service@gmail.com"

    def booking_confirmation(user, journey)
      @user = user
      @journey = journey
      mail( to: @user.email , subject: 'Journey Booking Confirmation')
    end
  end

  
