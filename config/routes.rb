Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'

  jsonapi_resources :public_posts
  jsonapi_resources :private_posts

  get '/current_user', to: 'private_posts#current'

end
