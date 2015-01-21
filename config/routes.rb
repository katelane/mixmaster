Rails.application.routes.draw do

  root 'home#index'

  resources :mixes
  resources :songs
  resources :artists
  resources :mixers

  resources :mixer_sessions, only: [ :create ]

  get "/login" => redirect("/auth/twitter"), as: :login
  delete '/mixer_sessions', to: 'mixer_sessions#destroy'
  get '/auth/:provider/callback', to: 'mixer_sessions#create'
  get '/auth/failure' => 'mixer_sessions#failure'

end
