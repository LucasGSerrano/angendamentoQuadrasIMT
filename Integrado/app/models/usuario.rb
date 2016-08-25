class Usuario < ActiveRecord::Base	
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, 
         :validatable, :authentication_keys => {email: true, login: false}
	validates :nome, presence: true, :uniqueness => true
	validates :senha, presence: true
	validates :password_digest, presence: true

	def authenticate(username, password)
		if self.nome == username && self.senha == password
	 		self
		end
	end
end
