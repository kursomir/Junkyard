FactoryGirl.define do
  factory :state do
    name { Faker::Hacker.adjective }
    display_name { Faker::Hacker.verb }
  end
end