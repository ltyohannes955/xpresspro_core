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
end
