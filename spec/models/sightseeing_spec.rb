require 'rails_helper'

RSpec.describe Sightseeing, type: :model do
  attributes = [
    {location: %i[presence]},
    {image: %i[presence]},
    {description: %i[presence]},
    {price_per_hour: [:presence, {numericality: [[:is_greater_than, 0]]}]},
    {time_spent: [:presence, {numericality: [[:is_greater_than, 0]]}]},
  ]
  include_examples('model_shared_spec', :sightseeing, attributes)
end
