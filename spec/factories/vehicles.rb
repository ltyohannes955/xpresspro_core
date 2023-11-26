FactoryBot.define do
  factory :vehicle do
    vehicle_name { Faker::Name.name }
    vehicle_model { Faker::Lorem.word }
    luggage_capacity {45}
    person_capacity {4}
    price_per_day {130}
    weightcapacity {240}
    frontview { Faker::Lorem.sentence}
    backview { Faker::Lorem.sentence}
    sideview { Faker::Lorem.sentence}

  end
end
