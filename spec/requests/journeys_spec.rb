require 'rails_helper'

RSpec.describe "Journeys", type: :request do
  let(:valid_attributes) do
    {
      origin: Faker::Lorem.word,
      destination: Faker::Lorem.word,
      Departure_Date: Faker::Date.backward(days: 365),
      Departure_time: Faker::Time.backward(days: 14, period: :evening),
      list_of_Sightseeing: ["a","c","s","f"],
      status: Journey::ACCEPTED,
      user_id: create(:user).id,
      driver_id: create(:driver).id,
      vehicle_id: create(:vehicle).id
    }
  end

  let(:invalid_attributes) do
    {
      origin: nil,
      destination: Faker::Lorem.word,
      Departure_Date: Faker::Date.backward(days: 365),
      Departure_time: Faker::Time.backward(days: 14, period: :evening),
      list_of_Sightseeing: ["a","c","s","f"],
      status: Journey::ACCEPTED,
      user_id: create(:user).id,
      driver_id: create(:driver).id,
      vehicle_id: create(:vehicle).id

    }
  end

  let(:new_attributes)do 
    {
      origin: Faker::Lorem.word
    }
  end
end
