FactoryBot.define do
  factory :driver do
    driver_name { Faker::Name.name }
    phone_number {2332}
    email { Faker::Internet.email }
    status { Driver::AVAILABLE}
    language { Driver::FRENCH}

  end
end
