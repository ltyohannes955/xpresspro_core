class Vehicle < ApplicationRecord
    validates :vehicle_name, :vehicle_model, :luggage_capacity, :person_capacity, :price_per_day, presence: true
    validates :luggage_capacity, :price_per_day, :person_capacity, numericality:{ greater_than: 0 }
end
