class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

# llamar a os parametros configurados
before_action :configure_permitted_parameters, if: :devise_controller?

  # Proteger la base de datos 
  protected
  	def configure_permitted_parameters
  		#devise_parameter_sanitizer.permit
  		devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me) }
  		devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me) }
  		devise_parameter_sanitizer.permit(:sign_update) { |u| u.permit(:email, :password, :password_confirmation, :remember_me) }
  	end

end
