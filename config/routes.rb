Rails.application.routes.draw do
  devise_for :users
  #devise_for :users, path: 'usuarios', path_names: { sign_in: 'Iniciar_sesión', sign_out: 'Cerrar_sesión', password: 'Contraseña', confirmation: 'Confirmación', unlock: 'Desbloquear', registration: 'Registro', sign_up: 'Registrarse' }
  root 'pages#index' # redireccionamos la página inicial al root
  
  #definimos las rutas para las páginas
  #get 'pages/index'
  ## redireccionamos a la página y no al directorio
  get 'home' => 'pages#home' # redireccionamos a la página y no al directorio
  get 'user/:id' => 'pages#profile'
  get 'explore' => 'pages#explore'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
