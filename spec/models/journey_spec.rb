require 'rails_helper'

RSpec.describe Journey, type: :model do
  attributes = [
    {origin: %i[presence]},
    {destination: %i[presence]},
    {Departure_Date: %i[presence]},
    {Departure_time: %i[presence]},
    {list_of_Sightseeing: %i[presence]},
    {status: [:presence, {inclusion: [[:in_array, Journey::STATUS]]}]},
    {user: :belong_to},
    {driver: :belong_to},
    {vehicle: :belong_to}
  ]

  include_examples('model_shared_spec', :journey, attributes)

  describe 'callbacks' do
    it 'sends a booking confirmation email after create' do
      user = create(:user)
      driver = create(:driver)
      vehicle = create(:vehicle)

      journey = build(:journey, user: user, driver: driver, vehicle: vehicle)

      expect do
        journey.save
      end.to change(ActionMailer::Base.deliveries, :count).by(1)

      email = ActionMailer::Base.deliveries.last
      expect(email.to).to include(user.email)
    end
  end
end
