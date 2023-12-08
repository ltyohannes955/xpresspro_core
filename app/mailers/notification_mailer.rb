# app/mailers/notification_mailer.rb
class NotificationMailer < ApplicationMailer
    default from: 'your_app@example.com'
    
    def send_notification(user)
      @user = user
  
      mail(to: @user.email, subject: 'New Notification') do |format|
        format.text { render plain: 'This is the plain text content of the email.' }
        format.html { render html: '<p>This is the HTML content of the email.</p>'.html_safe }
      end
    end
  end
  