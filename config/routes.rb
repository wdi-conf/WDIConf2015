Rails.application.routes.draw do

  resources :events, :pages, :users

  get '/' => 'pages#index', :as => :root

  get '/about' => 'pages#about'

  #/session/new - login form
  get '/login' => 'session#new'

  #/session - after submit form for login
    post '/login' => 'session#create'

  #/session - logout
    delete '/logout' => 'session#destroy'

  # namespaces the admin to /admin/* paths
  namespace :admins do
    resources :events, :users
    # resources :pages, :only => [:show]
    get '/' => 'pages#show'        # this is not root. This is /admins
  end

end
