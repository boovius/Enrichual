RitualRecipes::Application.routes.draw do

  
  get "user_rituals/new"
  get "user_rituals/post"
  root "site#index"

  resources :users do 
     get 'user-rituals/new' => "user_rituals#new"
     get 'user-rituals/test' => "user_rituals#test"
     post 'user-rituals/:id' => "user_rituals#create"
  end #, except: :show 
  #get '/me' => 'users#show'
  # get 'users/:id' => 'users#show', as: 'me'
  resources :rituals

  get 'rituals/:id/:code' => "rituals#show"

 

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
