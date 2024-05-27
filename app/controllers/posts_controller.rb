class PostsController < ApplicationController
  def create
    sample = {message: "Hello, world!"}
    render json: sample
  end
end
