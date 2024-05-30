Rails.application.routes.draw do
  get '/test', to: 'posts#test'
  post '/post', to: 'posts#create'
  get '/posts', to: 'posts#all'
  get '/posts/:id', to: 'posts#show'
  delete '/posts/:id', to: 'posts#destroy'
end
