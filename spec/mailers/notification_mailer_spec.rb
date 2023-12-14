# spec/mailers/notification_mailer_spec.rb
require 'rails_helper'

RSpec.describe NotificationMailer, type: :mailer do
  describe '#send_notification' do
    let(:user) { FactoryBot.create(:user) }
    let(:mail) { NotificationMailer.send_notification(user) }

    it 'renders the body' do
      expect(mail.body.parts.map(&:decoded).join).to include('This is the plain text content of the email.')
      expect(mail.body.parts.map(&:decoded).join).to include('<p>This is the HTML content of the email.</p>')
    end
  end
end
