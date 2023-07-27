Rails.application.routes.draw do
  get 'home/index'
  resources :comments
  devise_for :users, controller: {
    sessions: "users/sessions",
    registration: "users/registrations"
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
