require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:user) { create(:user) }

  it "is valid with valid attributes" do
    post = create(:post, user: user)
    
    expect(post).to be_valid
  end
  
  it "is not valid when there is no title" do
=begin
Railsのcreate()とfactory_botのcreate()の違いが分からない。
=end
    # post_info = {
    #   body: "This is a body of a test post.",
    #   user_id: user.id
    # }
    # post = Post.create(post_info)

    post = FactoryBot.build(:post, title: nil, user: user)
    post.valid?

    expect(post).to be_invalid
  end

  it "is not valid when there title is empty" do
    post = FactoryBot.build(:post, title: "", user: user)
    post.valid?

    expect(post).to be_invalid
  end

  it "is not valid when there is no body" do
    post = FactoryBot.build(:post, body: nil, user: user)
    post.valid?

    expect(post).to be_invalid
  end

  it "is not valid when there is no body" do
    post = FactoryBot.build(:post, body: "", user: user)
    post.valid?

    expect(post).to be_invalid
  end
end
