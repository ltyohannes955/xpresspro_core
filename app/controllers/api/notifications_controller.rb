class Api::NotificationsController < ApplicationController
  def create
    user = User.find(params[:user_id])
    NotificationMailer.send_notification(user).deliver_now
    render json: { message: 'Notification email sent' }
  end
end
