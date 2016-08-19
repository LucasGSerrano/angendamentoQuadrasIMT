class CadastroUsuario < ActiveRecord::Base
	has_secure_password

	validates :nome, presence: true, :uniqueness => true
	validates :senha, presence: true

	before_save :senha_encriptada
	after_save :limpar_senha

	def senha_encriptada
		if senha.present?
			
			salt = BCrypt::Engine.generate_salt
			self.senha= BCrypt::Engine.hash_secret(senha, salt)
		end
	end

	def limpar_senha
	 	self.senha = nil
	end
end
