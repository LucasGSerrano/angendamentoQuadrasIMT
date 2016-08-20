class CadastroUsuario < ActiveRecord::Base
	#has_secure_password

	validates :senha, presence: true, length: { minimum: 6 }
	validates :password_digest, presence: true, length: { minimum: 6 }
end
