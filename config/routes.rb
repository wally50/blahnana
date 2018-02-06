Rails.application.routes.draw do
  
  #homepage
  get '/', to: 'pages#show'
  #user_session
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  #user_database
  get '/signup', to: 'users#new'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show'
  #story_database
  get '/stories/new', to: 'stories#new'
  post '/stories', to: 'stories#create'
  #stories_entries_database
  post '/stories_entries', to: 'stories_entries#create'
  post '/api/create', to: 'story_entries#api_create'
  get '/api/all', to: 'story_entries#api_all'
  #banana_transactions_database
  post '/give_banana', to: 'banana_transactions#create'
  #sellbanana_landing_page
  get '/buynana', to: 'buynanas#show'

  resources :charges
  resources :banana_transactions
  resources :story_entries
  resources :users
  resources :stories
end
