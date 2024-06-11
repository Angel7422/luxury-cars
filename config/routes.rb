Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root to: "pages#home"

  GET "cars", to: "cars#index"
  GET "cars/new", to: "cars#new", as: :new_car
  POST "cars", to: "cars#create"
  GET "cars/:id", to: "cars#show", as: :car
  GET "cars/my_cars", to: "cars#my_cars"

  GET "bookins", to: "bookings/index"
  GET "bookings/new", to: "bookings#new", as: :new_booking
  POST "bookings", to: "bookings#create"
  GET "bookings/:id", to: "bookings#show", as: :booking
  PATCH "bookings/:id/approve", to: "bookings#approve"
  PATCH "bookings/:id/reject", to: "bookings#reject"
end
