Rails.application.routes.draw do
  resources :users
  root to: 'visitors#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin_facebook' => 'sessions#new_facebook', :as => :signin_facebook
  get '/signin_twitter' => 'sessions#new_twitter', :as => :signin_twitter
   get '/signin_google' => 'sessions#new_google', :as => :signin_google
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
end
