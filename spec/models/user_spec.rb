require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with valid attributes" do
    user_info = {
      name: "test user",
      email: "test@email.com",
      password: "password",
      password_confirmation: "password"
    }
    user = User.create(user_info)

    expect(user).to be_valid
  end
end
