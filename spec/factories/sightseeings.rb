FactoryBot.define do
  factory :sightseeing do
    location { Faker::Lorem.word }
    description { Faker::Lorem.sentence }
    price_per_hour {45}
    time_spent {4}
  end
end
