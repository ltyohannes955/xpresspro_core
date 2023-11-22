FactoryBot.define do
  factory :journey do
    origin { Faker::Lorem.word }
    destination { Faker::Lorem.word }
    Departure_Date { Faker::Date.backward(days: 365) }
    Departure_time { Faker::Time.backward(days: 14, period: :evening) }
    list_of_Sightseeing { ["a","c","s","f"] }
    status { Journey::ACCEPTED }
    user { create(:user) }
    driver { create(:driver) }
    vehicle { create(:vehicle) }
  end
end
