class SessionsController < ApplicationController
	def login
		
	end

	def login_attempt
		authorized_user = User.authenticate(params[:username],params[:login_password])
		if authorized_user
	      flash[:notice] = 'Bem-Vindo à página de Agendamento de Quadras'
	      redirect_to(:action => 'home')
	    else
	      flash[:notice] = 'Nome de usuário ou senha incorreta'
	      flash[:color]= 'invalid'
	      render 'login'
	  	end
	end
end