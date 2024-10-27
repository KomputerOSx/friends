Rails.application.routes.draw do
  resources :friends
  #this is how we create a new route
  #get "home/index"
  root "friends#index"
  get "up" => "rails/health#show", as: :rails_health_check
  get "home/about"

  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end
