class Vehicle < ApplicationRecord
    validates :vehicle_name, :vehicle_model, :price_per_day, :person_capacity, :weightcapacity, :luggage_capacity, :sideview, :backview, :frontview, presence: true
    validates :price_per_day, :person_capacity, :luggage_capacity, :weightcapacity, numericality: { greater_than: 0
}
end
