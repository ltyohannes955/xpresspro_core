require 'rails_helper'

RSpec.describe "Drivers", type: :request do
  include_examples("request_shared_spec", "drivers", 8)

  let(:valid_attributes) do
    {
      driver_name: Faker::Name.name,
      phone_number: 2332,
      email: Faker::Internet.email,
      status: Driver::AVAILABLE,
      language: Driver::FRENCH
    }
  end

  let(:invalid_attributes) do
    {
      driver_name: nil,
      phone_number: 2332,
      email: Faker::Internet.email,
      status: Driver::AVAILABLE,
      language: Driver::FRENCH
    }
  end
  
  let(:new_attributes)do
    {
      driver_name: Faker::Name.name
    }
  end
end
