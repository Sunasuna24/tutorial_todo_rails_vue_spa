FactoryBot.define do
  factory :user do
    name { "test user" }
    email { "test@email.com" }
    password { "password" }
  end
end
