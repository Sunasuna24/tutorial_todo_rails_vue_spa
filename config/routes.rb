Rails.application.routes.draw do
  get '/post', to: 'posts#create'
end
