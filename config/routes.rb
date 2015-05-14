Rails.application.routes.draw do

  resources :events, :pages

  get '/' => 'events#index', :as => :root

  get '/about' => 'pages#about'

  # namespaces the admin to /admin/* paths
  namespace :admins do
    resources :events, :users
  end

end
