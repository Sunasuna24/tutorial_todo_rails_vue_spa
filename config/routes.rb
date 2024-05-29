Rails.application.routes.draw do
  get '/test', to: 'posts#test'
  post '/post', to: 'posts#create'
end
