class TestController < ApplicationController
    def send_test_email
      recipient_email = "tibukah@gmail.com"
      SampleMailer.sample_email(recipient_email).deliver_now
      render plain: 'Test email sent successfully!'
    end
end