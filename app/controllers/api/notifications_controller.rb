class Api::NotificationsController < ApplicationController
  def create
    begin
      user = User.find(params[:user_id])
      NotificationMailer.send_notification(user).deliver_now
      render json: { message: 'Notification email sent' }
    rescue ActiveRecord::RecordNotFound => e
      render json: { error: "User not found with ID #{params[:user_id]}" }, status: :not_found
    rescue StandardError => e
      render json: { error: "An error occurred: #{e.message}" }, status: :internal_server_error
    end
  end
end
