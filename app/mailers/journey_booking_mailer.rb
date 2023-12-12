# app/mailers/journey_booking_mailer.rb
class JourneyBookingMailer < ApplicationMailer
    default from: "xpresspro.service@gmail.com"

    def booking_confirmation(recipient_email)
      mail( to: recipient_email , subject: 'Journey Booking Confirmation')
    end
  end

  
