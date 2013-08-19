RitualRecipes::Application.routes.draw do

  
  root "site#index"

  resources :users do
    post 'rituals/' => "rituals#create", as: :rituals
  end

  #, except: :show 
  #get '/me' => 'users#show'
  # get 'users/:id' => 'users#show', as: 'me'


  resources :programs do
     get 'rituals/new' => "rituals#new", as: :new_ritual
  end

  #push state
  get 'programs/:id/:code' => "programs#show"

  #search 
  get "search/:query" => "search#index"
 
  #twilio SMS
  get "sms/send_sms" => "sms#send_sms" 
  get '/sms' => 'sms#receive_sms'

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
