class SampleMailer < ApplicationMailer
    default from: "xpresspro.service@gmail.com"
    
    def sample_email(recipient_email)
      mail(to: recipient_email, subject: 'Test Email')
    end
end