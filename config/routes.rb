RitualRecipes::Application.routes.draw do

  
  get "rituals/index"
  get "rituals/new"
  get "rituals/edit"
  get "rituals/show"
  root "site#index"

  resources :users
  resources :rituals

  # Login
  get "login" => "session#new"
  post "login" => "session#create"

  # Logout
  delete "logout" => "session#destroy"
  get "logout" => "session#destroy"

  resource :password, only: [ :update ]

  get "reset/:code" => "password#edit"
  get "registrant/:code" => "users#new"


  get "privacy" => "site#privacy"
  get "terms" => "site#terms"

end
