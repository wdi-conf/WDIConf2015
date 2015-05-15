Rails.application.routes.draw do

  resources :events, :pages

  get '/' => 'pages#index', :as => :root

  get '/about' => 'pages#about'

end
