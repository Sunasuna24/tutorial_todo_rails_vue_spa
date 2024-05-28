require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:user) { FactoryBot.create(:user) }

  it "is valid with valid attributes" do
    post_info = {
      title: "My Title",
      body: "This is a body of a test post.",
      user_id: user.id
    }
    post = Post.create(post_info)

    expect(post).to be_valid
  end

  it "is not valid when there is no title" do
    post_info = {
      body: "This is a body of a test post.",
      user_id: user.id
    }
    post = Post.create(post_info)

    expect(post).to be_invalid
  end

  it "is not valid when there title is empty" do
    post_info = {
      title: "",
      body: "This is a body of a test post.",
      user_id: user.id
    }
    post = Post.create(post_info)

    expect(post).to be_invalid
  end

  it "is not valid when there is no body" do
    post_info = {
      title: "My Title",
      user_id: user.id
    }
    post = Post.create(post_info)

    expect(post).to be_invalid
  end

  it "is not valid when there is no body" do
    post_info = {
      title: "My Title",
      body: "",
      user_id: user.id
    }
    post = Post.create(post_info)

    expect(post).to be_invalid
  end
end
