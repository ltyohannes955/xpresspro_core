require 'rails_helper'

RSpec.describe "Blogs", type: :request do
  include_examples("request_shared_spec", "blogs", 6)

  let(:valid_attributes) do
    {
      comment: Faker::Lorem.sentence,
      stars: 3,
      user_id: create(:user).id
    }
  end

  let(:invalid_attributes) do
    {
      comment: nil,
      stars: 3,
      user_id: create(:user).id
    }
  end
  
  let(:new_attributes)do
    {
      comment: Faker::Lorem.sentence,
    }
  end
end
