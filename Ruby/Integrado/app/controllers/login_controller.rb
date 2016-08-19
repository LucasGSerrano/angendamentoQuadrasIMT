class LoginController < ApplicationController
	def index

	end

	def login
		@user = Usuario.where(:nome => params[:login][:nome], :senha => params[:login][:senha]).first
		
		if  @user.nil? 
			redirect_to login_index_path
		elsif @user.authenticate(@user.nome, @user.senha )
			redirect_to usuarios_path, :notice => "Logado com Sucesso!"
		end
	end

	def novo_usuario
		@user = User.new
	end
end
