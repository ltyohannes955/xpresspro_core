class Vehicle < ApplicationRecord
    validates :vehicle_name, :vehicle_model, :price_per_day, :person_capacity, :luggage_capacity, presence: true
    validates :price_per_day, :person_capacity, :luggage_capacity, numericality: { greater_than: 0
}
end
