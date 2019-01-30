FactoryBot.define do
  factory :restaurant do
    name  { Faker::Lorem.word }
    email { Faker::Internet.email}
    phone { Faker::Number.number(10) }
  end
end
