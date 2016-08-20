class Usuario < ActiveRecord::Base
	has_secure_password

	validates :nome, presence: true, :uniqueness => true
	validates :senha, presence: true
	validates :password_digest, presence: true

	def authenticate(username, password)
		if self.nome == username && self.senha == password
	 		self
		end
	end
end
