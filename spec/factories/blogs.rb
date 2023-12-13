FactoryBot.define do
  factory :blog do
    comment { Faker::Lorem.sentence }
    stars { 3 }
    user { create(:user) }
  end
end
