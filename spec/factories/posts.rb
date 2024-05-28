FactoryBot.define do
  factory :post do
    title { "My Title" }
    body { "This is my body of the test post." }
    association :user
  end
end
