Rails.application.routes.draw do

  resources :events, :pages, :users

  get '/' => 'pages#index', :as => :root

  get '/about' => 'pages#about'



end
