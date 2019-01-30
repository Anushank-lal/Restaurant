FactoryBot.define do
  factory :reservation do
    reservation_time { Faker::Time }
    guest_count { Faker::Number.number(1) }
    guest_name { Faker::Lorem.word  }
    table_name { Faker::Lorem.word  }
  end
end
