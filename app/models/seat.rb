class Seat < ApplicationRecord
    validates :seat_name, :seat_description, :image, presence: true

end
