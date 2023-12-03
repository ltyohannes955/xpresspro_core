require 'rails_helper'

RSpec.describe "Vehicles", type: :request do
  include_examples("request_shared_spec", "vehicles", 12)

  let(:valid_attributes) do
    {
      vehicle_name: Faker::Name.name,
      vehicle_model: Faker::Lorem.word,
      luggage_capacity: 45,
      person_capacity: 4,
      price_per_day: 130,
      weightcapacity: 240,
      frontview: Faker::Lorem.sentence,
      backview: Faker::Lorem.sentence,
      sideview: Faker::Lorem.sentence
    }
  end

  let(:invalid_attributes) do
    {
      vehicle_name: nil,
      vehicle_model: Faker::Lorem.word,
      luggage_capacity: 45,
      person_capacity: 4,
      price_per_day: 130,
      weightcapacity: 240,
      frontview: Faker::Lorem.sentence,
      backview: Faker::Lorem.sentence,
      sideview: Faker::Lorem.sentence

    }
  end
  
  let(:new_attributes)do
    {
      vehicle_name: Faker::Name.name
    }
  end
end
