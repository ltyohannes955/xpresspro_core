class Sightseeing < ApplicationRecord
    validates :location, :description, :price_per_hour, :time_spent, presence: true
    validates :price_per_hour, :time_spent, numericality: { greater_than: 0
}

end
