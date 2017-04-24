# el Pages_controller.rb contiene todo el código para cualquier página 
# dentro de /Pages

class PagesController < ApplicationController
  
# Backend para pages/index
  def index
    #@posts = Post.all
  end

# Backend para pages/home
  def home
    @posts = Post.all
  end

# Backend para pages/profile
  def profile
  	if (User.find_by_username(params[:id]))
  		@username = params[:id]
  	else
  		redirect_to root_path, :notice=> "Usuario no encontrado" 
  	end
    @posts = Post.all.where("user_id = ?", User.find_by_username(params[:id]))
    @newPost = Post.new
  end

# Backend para pages/explore
  def explore
    @posts = Post.all
  end
  
end
