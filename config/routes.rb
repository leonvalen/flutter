Rails.application.routes.draw do
  devise_for :users
  root 'pages#index' # redireccionamos la página inicial al root
  
  #definimos las rutas para las páginas
  #get 'pages/index'
  ## redireccionamos a la página y no al directorio
  get '/home' => 'pages#home' # redireccionamos a la página y no al directorio
  get '/profile' => 'pages#profile'
  get '/explore' => 'pages#explore'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
