require 'rails_helper'

RSpec.describe Seat, type: :model do
  attributes = [
    {seat_name: %i[presence]},
    {seat_description: %i[presence]},
    {image: %i[presence]}
  ]
  include_examples('model_shared_spec', :seat, attributes)
end
