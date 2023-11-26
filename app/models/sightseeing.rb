class Sightseeing < ApplicationRecord
    validates :location, :description, :price_per_hour, :time_spent, :image, presence: true
    validates :price_per_hour, :time_spent, numericality: { greater_than: 0
}

end
