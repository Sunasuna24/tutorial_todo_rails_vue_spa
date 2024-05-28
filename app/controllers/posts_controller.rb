class PostsController < ApplicationController
  def create
    user_id = 1 # 後に動的にしたい
    title = params[:title]
    body = params[:body]

    post_data = {
      title: title,
      body: body,
      user_id: user_id
    }

    post = Post.create(post_data)

    render json: post
  end
end
