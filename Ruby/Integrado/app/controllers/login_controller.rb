class LoginController < ApplicationController
	def index

	end

	def login
		user = Usuario.where(:nome => params[:login][:nome].downcase)
		if user && user.authenticate(params[:nome], params[:senha])
			login[:nome] = user.nome
			redirect_to usuarios_path, :notice => "Logado com Sucesso!"
		else
			redirect_to cadastro_usuarios_path
		end
	end
end
