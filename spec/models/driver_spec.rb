require 'rails_helper'

RSpec.describe Driver, type: :model do
  attributes = [
    { driver_name: %i[presence] },
    { phone_number: %i[presence] },
    { email: %i[presence] },
    { status: [:presence, {inclusion: [[:in_array, Driver::STATUS]]}]},
    { language: [:presence, {inclusion: [[:in_array, Driver::LANGUAGE]]}]}
  ]
  include_examples('model_shared_spec', :driver, attributes)
end
