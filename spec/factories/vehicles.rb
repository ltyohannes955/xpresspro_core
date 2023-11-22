FactoryBot.define do
  factory :vehicle do
    vehicle_name { Faker::Name.name}
    vehicle_model { Faker::Lorem.word}
    person_capacity {6}
    luggage_capacity {4}
    price_per_day {130}
  end
end
