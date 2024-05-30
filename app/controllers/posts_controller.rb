class PostsController < ApplicationController
  def test
    data = {
      message: 'This message was returned from Rails API server!'
    }

    render json: data
  end

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

  def all
    posts = Post.all

    render json: posts
  end

  def show
    post = Post.find(params[:id])

    render json: post
  end

  def destroy
    Post.delete(params[:id])

    render status: 200
  end

  def update
    title = params[:title]
    body = params[:body]
    post = Post.update(params[:id], {title: title, body: body})

    render json: post
  end
end
