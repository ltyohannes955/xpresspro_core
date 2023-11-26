require 'rails_helper'

RSpec.describe Vehicle, type: :model do
  attributes = [
    {vehicle_name: %i[presence]},
    {vehicle_model: %i[presence]},
    {frontview: %i[presence]},
    {backview: %i[presence]},
    {sideview: %i[presence]},
    {person_capacity: [:presence, {numericality: [[:is_greater_than, 0]]}]},
    {weightcapacity: [:presence, {numericality: [[:is_greater_than, 0]]}]},
    {price_per_day: [:presence, {numericality: [[:is_greater_than, 0]]}]},
    {luggage_capacity: [:presence, {numericality: [[:is_greater_than, 0]]}]}
  ]
  include_examples('model_shared_spec', :vehicle, attributes)
end
