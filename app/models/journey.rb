class Journey < ApplicationRecord
    belongs_to :user
    belongs_to :vehicle
    belongs_to :driver

    ACCEPTED = "Accepted".freeze
    PENDING = "Pending".freeze
    REJECTED = "Rejected".freeze

    STATUS = [ACCEPTED, PENDING, REJECTED].freeze
    validates :origin, :destination, :Departure_Date, :Departure_time, :list_of_Sightseeing, presence: true
    validates :status, inclusion: {in: STATUS}, presence: true

    after_create :send_booking_confirmation_email

    private
  
    def send_booking_confirmation_email
      JourneyBookingMailer.booking_confirmation(user, self).deliver_now
    end
end
