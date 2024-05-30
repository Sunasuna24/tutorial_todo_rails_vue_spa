Rails.application.routes.draw do
  get '/test', to: 'posts#test'
  post '/post', to: 'posts#create'
  get '/posts/:id', to: 'posts#show'
  get '/posts', to: 'posts#all'
end
