Rails.application.routes.draw do
  post '/post', to: 'posts#create'
end
