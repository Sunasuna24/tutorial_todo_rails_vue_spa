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

  describe "GET /posts/:id" do
    let(:post) { create(:post) }

    it "returns a single post" do
      id = post.id
      get "/posts/#{id}"

      expect(response).to have_http_status(200)

      response_post = JSON.parse(response.body)
      new_post = Post.new(response_post)

      expect(new_post).to eq(post)
    end
  end

  describe "DELETE /posts/:id" do
    let(:post) { create(:post) }

    it "deletes a post" do
      delete "/posts/#{post.id}"

      expect(Post.find_by(id: post.id)).to eq(nil)
    end
  end
end
