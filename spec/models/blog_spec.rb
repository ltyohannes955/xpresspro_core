require 'rails_helper'

RSpec.describe Blog, type: :model do
  attributes = [
    { comment: %i[presence] },
    { stars: %i[presence] },
    {user: :belong_to}
  ]
  include_examples('model_shared_spec', :blog, attributes)
end
