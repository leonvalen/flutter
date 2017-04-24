# el Pages_controller.rb contiene todo el código para cualquier página 
# dentro de /Pages

class PagesController < ApplicationController
  
# Backend para pages/index
  def index
  end

# Backend para pages/home
  def home
  end

# Backend para pages/profile
  def profile
  	if (User.find_by_username(params[:id]))
  		@username = params[:id]
  	else
  		redirect_to root_path, :notice=> "Usuario no encontrado" 
  	end
  end

# Backend para pages/explore
  def explore
  end
  
end
