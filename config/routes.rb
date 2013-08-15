RitualRecipes::Application.routes.draw do

  
  root "site#index"

  resources :users do 
     post 'user-rituals/:id' => "user_rituals#create"
  end #, except: :show 
  #get '/me' => 'users#show'
  # get 'users/:id' => 'users#show', as: 'me'
  resources :rituals do
     get 'user-rituals/new' => "user_rituals#new", as: :new_user_ritual
  end

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
