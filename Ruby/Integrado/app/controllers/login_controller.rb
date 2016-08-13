class LoginController < ApplicationController
  def index
  end

  def login
  	user = User.authenticate(params[:nome], params[:senha])
  	if user
  		session[:user_id] = user.id
		redirect_to root_url, :notice => "Logged in!"
	else
		redirect_to cadastro_usuario_path
    		flash.now.alert = "Invalid email or password"
	end
 end
end
