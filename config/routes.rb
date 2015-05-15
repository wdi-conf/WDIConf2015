Rails.application.routes.draw do

  resources :events, :pages, :users

  get '/' => 'events#index', :as => :root

  get '/about' => 'pages#about'

  #/session/new - login form
  get '/login' => 'session#new'

  #/session - after submit form for login
    post '/login' => 'session#create'

  #/session - logout
    delete '/logout' => 'session#destroy'


end
