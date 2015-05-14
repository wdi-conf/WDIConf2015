Rails.application.routes.draw do

  resources :events, :pages, :users

  get '/' => 'events#index', :as => :root

  get '/about' => 'pages#about'



end
