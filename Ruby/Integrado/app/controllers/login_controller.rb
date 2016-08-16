class LoginController < ApplicationController
	def index

	end

	def login
		@user = Usuario.where(:nome => params[:login][:nome], :senha => params[:login][:senha] )

		if @user.authenticate(params[:nome], params[:senha])
			login[:nome] = user.nome
			login[:senha] = user.senha
			redirect_to usuarios_path, :notice => "Logado com Sucesso!"
		else
			redirect_to new_cadastro_usuario_path
		end
	end
end
