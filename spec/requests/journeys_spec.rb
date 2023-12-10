RSpec.describe "Journeys", type: :request do
  include_examples "request_shared_spec", "journeys", 12, [:delete] # Assuming your Journey model has 9 fields

  let(:valid_attributes) do
    {
      origin: Faker::Lorem.word,
      destination: Faker::Lorem.word,
      Departure_Date: Faker::Date.backward(days: 365),
      Departure_time: Faker::Time.backward(days: 14, period: :evening),
      list_of_Sightseeing: ["a", "c", "s", "f"],
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
      list_of_Sightseeing: ["a", "c", "s", "f"],
      status: Journey::ACCEPTED,
      user_id: create(:user).id,
      driver_id: create(:driver).id,
      vehicle_id: create(:vehicle).id
    }
  end

  let(:new_attributes) do
    {
      origin: Faker::Lorem.word
    }
  end

  it 'creates a new journey and sends email notification' do
    expect do
      post journeys_url, params: { payload: valid_attributes }, as: :json
    end.to change(Journey, :count).by(1)

    expect(response).to have_http_status(:created)

    # Check if the email was sent
    expect(ActionMailer::Base.deliveries.count).to eq(1)
    email = ActionMailer::Base.deliveries.first
    expect(email.to).to include(User.last.email) # Assuming your User model has an email attribute

    # Add more assertions based on your application's logic and requirements
    created_journey = Journey.last
    expect(created_journey.list_of_Sightseeing).to eq(["a", "c", "s", "f"])

  end
end
