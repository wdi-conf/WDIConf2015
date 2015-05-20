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

  # add a logged in user to an event
  	post 'events/:id/join' => 'users#join_event'

  # namespaces the admin to /admin/* paths
  namespace :admins do
    resources :events, :users
    resources :attendees #, :except => [:edit]
    # resources :pages, :only => [:show]
    get '/' => 'pages#show'        # this is not root. This is /admins
  end

end
