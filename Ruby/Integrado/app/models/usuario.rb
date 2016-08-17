class Usuario < ActiveRecord::Base

	def authenticate(username, password)
    if self.nome == username && self.senha == password
      self
    else
      redirect_to new_cadastro_usuario_path
    end
	end
end
