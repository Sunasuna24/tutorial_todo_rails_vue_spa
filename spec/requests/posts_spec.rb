require 'rails_helper'

RSpec.describe "Posts", type: :request do

  describe "GET /posts" do
    let(:post_number) { 5 }

    before do
      create_list(:post, post_number)
      get '/posts'
    end

    it "returns 200 status" do
      expect(response).to have_http_status(200)
    end

    it "returns all posts" do
      posts = JSON.parse(response.body)

      expect(posts.size).to eq(post_number)
    end
  end
end
