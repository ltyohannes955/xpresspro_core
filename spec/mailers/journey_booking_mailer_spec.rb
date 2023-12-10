# spec/mailers/journey_booking_mailer_spec.rb
require 'rails_helper'

RSpec.describe JourneyBookingMailer, type: :mailer do
  describe '#booking_confirmation' do
    let(:user) { create(:user, email: 'your_app@example.com') }
    let(:journey) { create(:journey) } # Assuming you have a Journey model and using FactoryBot

    let(:mail) { described_class.booking_confirmation(user, journey) }

    it 'renders the headers' do
      expect(mail.subject).to eq('Journey Booking Confirmation')
      expect(mail.to).to eq([user.email])
      expect(mail.from).to eq(['your_app@example.com']) # Replace with your actual sender email
    end

    it 'renders the body' do
      expect(mail.body.encoded).to include('Dear')
      expect(mail.body.encoded).to include('Journey Booking Confirmation')
      expect(mail.body.encoded).to include(journey.origin)
      expect(mail.body.encoded).to include(journey.destination)
      # Add more assertions based on your email content
    end
  end
end
