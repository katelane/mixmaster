Rails.application.routes.draw do

  root 'home#index'

  resources :mixes

  resources :songs

  resources :artists

  resources :mixers

  resources :mixer_sessions, only: [ :new, :create, :destroy ]

  get 'login'  => 'mixer_sessions#new'
  get 'logout' => 'mixer_sessions#destroy'

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
