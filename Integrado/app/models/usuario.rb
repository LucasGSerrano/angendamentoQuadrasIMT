require 'bcrypt'

class Usuario < ActiveRecord::Base
	include BCrypt

	has_secure_password

	validates :nome, presence: true, :uniqueness => true
	validates :senha, presence: true

	def authenticate(username, password)
		if self.nome == username && self.senha == password
	 		self
		end
	end
end
