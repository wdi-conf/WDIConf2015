Rails.application.routes.draw do

  resources :events, :pages, :users

  get '/' => 'pages#index', :as => :root

  get '/about' => 'pages#about'

  get '/contact' => 'pages#contact'

  get '/team' => 'pages#team'

  #/session/new - login form
  get '/login' => 'session#new'

  #/session - after submit form for login
    post '/login' => 'session#create'

  #/session - logout
    delete '/logout' => 'session#destroy'


end
