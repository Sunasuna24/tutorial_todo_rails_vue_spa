class PostsController < ApplicationController
  def create
    message = "Hello, " + params[:name] + "!"
    sample = {message: message}
    render json: sample
  end
end
