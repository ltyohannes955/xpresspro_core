require 'rails_helper'

RSpec.describe User, type: :model do
  attributes = [
    { first_name: %i[presence] },
    { last_name: %i[presence] },
    { email: %i[presence uniqueness] },
    { phone_number: %i[presence] },
    { password: %i[presence] }
  ]

  include_examples('model_shared_spec', :user, attributes)
end
