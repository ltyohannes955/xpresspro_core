require 'rails_helper'

RSpec.describe "Seats", type: :request do
  include_examples("request_shared_spec", "seats", 6)

  let(:valid_attributes) do
    {
      seat_name: Faker::Name.name,
      image: Faker::Lorem.sentence,
      seat_description: Faker::Lorem.sentence 
    }
  end

  let(:invalid_attributes) do
    {
      seat_name: nil,
      image: Faker::Lorem.sentence,
      seat_description: Faker::Lorem.sentence 
    }
  end
  
  let(:new_attributes)do
    {
      seat_name: Faker::Name.name
    }
  end
end
