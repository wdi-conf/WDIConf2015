Rails.application.routes.draw do

  resources :events, :pages

  get '/' => 'events#index', :as => :root

  get '/about' => 'pages#about'

end
