Rails.application.routes.draw do
  get 'reviews/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end

  # # read all restaurants
  # root "restaurants#index"
  # # get "restaurants", to: "restaurants#index"

  # # add new restaurant
  # get "new", to: "restaurants#new"
  # post "restaurants", to: "restaurants#create"

  # # read one restaurant
  # get ":id", to: "restaurants#show", as: :restaurant

  # # read review to a restaurant doesn't work, need to investigate further
  # get ":id/reviews/new", to: "reviews#new", as: :review
  # post ":id/reviews", to: "reviews#create"
end
