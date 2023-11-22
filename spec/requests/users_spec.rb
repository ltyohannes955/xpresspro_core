require 'rails_helper'

RSpec.describe "Users", type: :request do
    include_examples("request_shared_spec", "users", 8)

    let(:valid_attributes) do
      {
        first_name: Faker::Name.name,
        last_name: Faker::Name.name,
        email: Faker::Internet.email,
        phone_number: 2332,
        password: Faker::Internet.password
      }
    end
  
    let(:invalid_attributes) do
      {
        first_name: nil,
        last_name: Faker::Name.name,
        email: Faker::Internet.email,
        phone_number: 2332,
        password: Faker::Internet.password
      }
    end
    
    let(:new_attributes)do
      {
        first_name: Faker::Name.name
      }
  end
end