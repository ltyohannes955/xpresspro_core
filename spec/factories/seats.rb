FactoryBot.define do
  factory :seat do
    seat_name { Faker::Name.name }
    image { Faker::Lorem.sentence }
    seat_description { Faker::Lorem.sentence }
  end
end
