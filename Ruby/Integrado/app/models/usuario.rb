class Usuario < ActiveRecord::Base
	has_secure_password

	validates :nome, presence: true, :uniqueness => true
	validates :senha, presence: true
	
	after_save :limpar_senha

	def authenticate(username, password)
		if self.nome == username && self.senha == password
	 		self.senha_encriptada
		end
	end

	def senha_encriptada
		if senha.present?
			salt = BCrypt::Engine.generate_salt
			self.senha= BCrypt::Engine.hash_secret(self.senha, salt)
		end
	end

	def limpar_senha
	 	self.senha = nil
	end
end
